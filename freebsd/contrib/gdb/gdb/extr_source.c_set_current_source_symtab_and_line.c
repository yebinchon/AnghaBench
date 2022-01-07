
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ end; scalar_t__ pc; int line; int symtab; } ;


 int current_source_line ;
 int current_source_symtab ;

struct symtab_and_line
set_current_source_symtab_and_line (const struct symtab_and_line *sal)
{
  struct symtab_and_line cursal;

  cursal.symtab = current_source_symtab;
  cursal.line = current_source_line;

  current_source_symtab = sal->symtab;
  current_source_line = sal->line;
  cursal.pc = 0;
  cursal.end = 0;

  return cursal;
}
