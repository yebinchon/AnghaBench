
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_FREEBSD_ELF ;
 int arm_freebsd_elf_init_abi ;
 int bfd_arch_arm ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;

void
_initialize_armfbsd_tdep (void)
{
  gdbarch_register_osabi (bfd_arch_arm, 0, GDB_OSABI_FREEBSD_ELF,
                          arm_freebsd_elf_init_abi);
}
