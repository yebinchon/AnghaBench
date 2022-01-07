
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_SOLARIS ;
 int bfd_arch_sparc ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;
 int sparc32_sol2_init_abi ;

void
_initialize_sparc_sol2_tdep (void)
{
  gdbarch_register_osabi (bfd_arch_sparc, 0,
     GDB_OSABI_SOLARIS, sparc32_sol2_init_abi);
}
