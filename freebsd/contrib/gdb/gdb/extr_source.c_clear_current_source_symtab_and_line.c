
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current_source_line ;
 scalar_t__ current_source_symtab ;

void
clear_current_source_symtab_and_line (void)
{
  current_source_symtab = 0;
  current_source_line = 0;
}
