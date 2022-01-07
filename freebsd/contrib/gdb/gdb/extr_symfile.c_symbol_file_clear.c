
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int RESET_HP_UX_GLOBALS () ;
 int SOLIB_RESTART () ;
 int error (char*) ;
 int free_all_objfiles () ;
 scalar_t__ have_full_symbols () ;
 scalar_t__ have_partial_symbols () ;
 int printf_unfiltered (char*) ;
 int query (char*,int ) ;
 TYPE_1__* symfile_objfile ;

void
symbol_file_clear (int from_tty)
{
  if ((have_full_symbols () || have_partial_symbols ())
      && from_tty
      && !query ("Discard symbol table from `%s'? ",
   symfile_objfile->name))
    error ("Not confirmed.");
    free_all_objfiles ();
    symfile_objfile = ((void*)0);
    if (from_tty)
      printf_unfiltered ("No symbol file now.\n");



}
