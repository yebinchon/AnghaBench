
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int file_address; } ;



int symbol_compare(const void *a, const void *b) {
  return (int)((struct symbol *)a)->file_address -
         ((struct symbol *)b)->file_address;
}
