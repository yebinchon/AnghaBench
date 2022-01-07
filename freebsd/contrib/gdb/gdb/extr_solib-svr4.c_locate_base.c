
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_target_elf_flavour ;
 scalar_t__ debug_base ;
 scalar_t__ elf_locate_base () ;
 int * exec_bfd ;
 int inferior_ptid ;
 int look_for_base ;
 int null_ptid ;
 int proc_iterate_over_mappings (int ) ;
 int ptid_equal (int ,int ) ;
 scalar_t__ svr4_have_link_map_offsets () ;
 scalar_t__ target_has_execution ;

__attribute__((used)) static CORE_ADDR
locate_base (void)
{






  if (debug_base == 0 && svr4_have_link_map_offsets ())
    {
      if (exec_bfd != ((void*)0)
   && bfd_get_flavour (exec_bfd) == bfd_target_elf_flavour)
 debug_base = elf_locate_base ();





    }
  return (debug_base);
}
