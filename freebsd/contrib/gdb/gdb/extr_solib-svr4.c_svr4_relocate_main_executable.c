
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct section_offsets {scalar_t__* offsets; } ;
struct cleanup {int dummy; } ;
typedef int asection ;
struct TYPE_3__ {int num_sections; int section_offsets; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ ANOFFSET (int ,int) ;
 int DYNAMIC ;
 int bfd_get_file_flags (int ) ;
 int * bfd_get_section_by_name (int ,char*) ;
 int do_cleanups (struct cleanup*) ;
 int exec_bfd ;
 scalar_t__ exec_entry_point (int ,int *) ;
 int exec_ops ;
 struct cleanup* make_cleanup (int ,struct section_offsets*) ;
 int objfile_relocate (TYPE_1__*,struct section_offsets*) ;
 scalar_t__ read_pc () ;
 TYPE_1__* symfile_objfile ;
 struct section_offsets* xcalloc (int,int) ;
 int xfree ;

__attribute__((used)) static void
svr4_relocate_main_executable (void)
{
  asection *interp_sect;
  CORE_ADDR pc = read_pc ();
  interp_sect = bfd_get_section_by_name (exec_bfd, ".interp");
  if (interp_sect == ((void*)0)
      && (bfd_get_file_flags (exec_bfd) & DYNAMIC) != 0
      && (exec_entry_point (exec_bfd, &exec_ops) != pc))
    {
      struct cleanup *old_chain;
      struct section_offsets *new_offsets;
      int i, changed;
      CORE_ADDR displacement;
      displacement = pc - exec_entry_point (exec_bfd, &exec_ops);
      changed = 0;

      new_offsets = xcalloc (symfile_objfile->num_sections,
        sizeof (struct section_offsets));
      old_chain = make_cleanup (xfree, new_offsets);

      for (i = 0; i < symfile_objfile->num_sections; i++)
 {
   if (displacement != ANOFFSET (symfile_objfile->section_offsets, i))
     changed = 1;
   new_offsets->offsets[i] = displacement;
 }

      if (changed)
 objfile_relocate (symfile_objfile, new_offsets);

      do_cleanups (old_chain);
    }
}
