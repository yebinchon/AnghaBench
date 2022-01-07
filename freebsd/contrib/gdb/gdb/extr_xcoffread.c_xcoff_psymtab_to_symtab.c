
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symloc {scalar_t__ numsyms; } ;
struct partial_symtab {TYPE_1__* objfile; int filename; scalar_t__ number_of_dependencies; scalar_t__ read_symtab_private; scalar_t__ readin; } ;
typedef int bfd ;
struct TYPE_2__ {int * obfd; } ;


 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_flush (int ) ;
 int gdb_stderr ;
 int gdb_stdout ;
 scalar_t__ info_verbose ;
 int next_symbol_text_func ;
 int printf_filtered (char*,...) ;
 int scan_file_globals (TYPE_1__*) ;
 int xcoff_next_symbol_text ;
 int xcoff_psymtab_to_symtab_1 (struct partial_symtab*) ;

__attribute__((used)) static void
xcoff_psymtab_to_symtab (struct partial_symtab *pst)
{
  bfd *sym_bfd;

  if (!pst)
    return;

  if (pst->readin)
    {
      fprintf_unfiltered
 (gdb_stderr, "Psymtab for %s already read in.  Shouldn't happen.\n",
  pst->filename);
      return;
    }

  if (((struct symloc *) pst->read_symtab_private)->numsyms != 0
      || pst->number_of_dependencies)
    {


      if (info_verbose)
 {
   printf_filtered ("Reading in symbols for %s...", pst->filename);
   gdb_flush (gdb_stdout);
 }

      sym_bfd = pst->objfile->obfd;

      next_symbol_text_func = xcoff_next_symbol_text;

      xcoff_psymtab_to_symtab_1 (pst);



      scan_file_globals (pst->objfile);


      if (info_verbose)
 printf_filtered ("done.\n");
    }
}
