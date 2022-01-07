
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int currently_reading_symtab ;

__attribute__((used)) static void
decrement_reading_symtab (void *dummy)
{
  currently_reading_symtab--;
}
