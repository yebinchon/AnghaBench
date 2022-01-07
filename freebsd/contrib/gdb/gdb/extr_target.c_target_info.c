
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {int to_has_all_memory; int (* to_files_info ) (struct target_ops*) ;int to_longname; scalar_t__ to_stratum; int to_has_memory; struct target_ops* beneath; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ FILES_INFO_HOOK () ;
 scalar_t__ dummy_stratum ;
 int printf_unfiltered (char*,...) ;
 int stub1 (struct target_ops*) ;
 TYPE_1__* symfile_objfile ;
 struct target_ops* target_stack ;

__attribute__((used)) static void
target_info (char *args, int from_tty)
{
  struct target_ops *t;
  int has_all_mem = 0;

  if (symfile_objfile != ((void*)0))
    printf_unfiltered ("Symbols from \"%s\".\n", symfile_objfile->name);






  for (t = target_stack; t != ((void*)0); t = t->beneath)
    {
      if (!t->to_has_memory)
 continue;

      if ((int) (t->to_stratum) <= (int) dummy_stratum)
 continue;
      if (has_all_mem)
 printf_unfiltered ("\tWhile running this, GDB does not access memory from...\n");
      printf_unfiltered ("%s:\n", t->to_longname);
      (t->to_files_info) (t);
      has_all_mem = t->to_has_all_memory;
    }
}
