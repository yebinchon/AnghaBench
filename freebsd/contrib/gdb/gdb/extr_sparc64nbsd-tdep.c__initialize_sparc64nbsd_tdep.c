
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_NETBSD_ELF ;
 int bfd_arch_sparc ;
 int bfd_mach_sparc_v9 ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;
 int sparc64nbsd_init_abi ;

void
_initialize_sparc64nbsd_tdep (void)
{
  gdbarch_register_osabi (bfd_arch_sparc, bfd_mach_sparc_v9,
     GDB_OSABI_NETBSD_ELF, sparc64nbsd_init_abi);
}
