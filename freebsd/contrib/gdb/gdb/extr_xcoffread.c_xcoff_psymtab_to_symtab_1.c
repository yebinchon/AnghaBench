
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symloc {scalar_t__ numsyms; } ;
struct partial_symtab {int readin; int number_of_dependencies; scalar_t__ read_symtab_private; struct partial_symtab** dependencies; int filename; } ;
struct cleanup {int dummy; } ;


 int buildsym_init () ;
 int do_cleanups (struct cleanup*) ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int fputs_filtered (char*,int ) ;
 int gdb_flush (int ) ;
 int gdb_stderr ;
 int gdb_stdout ;
 scalar_t__ info_verbose ;
 struct cleanup* make_cleanup (int ,int ) ;
 int printf_filtered (char*,int ) ;
 int read_xcoff_symtab (struct partial_symtab*) ;
 int really_free_pendings ;
 int stabsread_init () ;
 int wrap_here (char*) ;

__attribute__((used)) static void
xcoff_psymtab_to_symtab_1 (struct partial_symtab *pst)
{
  struct cleanup *old_chain;
  int i;

  if (!pst)
    return;

  if (pst->readin)
    {
      fprintf_unfiltered
 (gdb_stderr, "Psymtab for %s already read in.  Shouldn't happen.\n",
  pst->filename);
      return;
    }


  for (i = 0; i < pst->number_of_dependencies; i++)
    if (!pst->dependencies[i]->readin)
      {

 if (info_verbose)
   {
     fputs_filtered (" ", gdb_stdout);
     wrap_here ("");
     fputs_filtered ("and ", gdb_stdout);
     wrap_here ("");
     printf_filtered ("%s...", pst->dependencies[i]->filename);
     wrap_here ("");
     gdb_flush (gdb_stdout);
   }
 xcoff_psymtab_to_symtab_1 (pst->dependencies[i]);
      }

  if (((struct symloc *) pst->read_symtab_private)->numsyms != 0)
    {

      stabsread_init ();
      buildsym_init ();
      old_chain = make_cleanup (really_free_pendings, 0);

      read_xcoff_symtab (pst);

      do_cleanups (old_chain);
    }

  pst->readin = 1;
}
