library(tidyverse)
library(here)
library(readxl)

raw <- read_excel(here("apple-trademarks/data/apple-legal-trademark-list.xlsx"))

apple_trademarks <- raw %>% 
    mutate(name_no_mark = str_remove(name, "[®™℠ ]$"))

apple_trademarks %>% 
    write_csv(here("apple-trademarks/output/apple-trademarks.csv"))
