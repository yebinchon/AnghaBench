
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int dummy; } ;


 scalar_t__ current_source_symtab ;
 int error (char*) ;
 int have_full_symbols () ;
 int have_partial_symbols () ;
 int select_source_symtab (int ) ;

void
set_default_source_symtab_and_line (void)
{
  struct symtab_and_line cursal;

  if (!have_full_symbols () && !have_partial_symbols ())
    error ("No symbol table is loaded.  Use the \"file\" command.");


  if (current_source_symtab == 0)
    select_source_symtab (0);
}
