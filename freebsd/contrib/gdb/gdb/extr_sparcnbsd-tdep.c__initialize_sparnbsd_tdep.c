
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDB_OSABI_NETBSD_AOUT ;
 int GDB_OSABI_NETBSD_ELF ;
 int bfd_arch_sparc ;
 int bfd_arch_unknown ;
 int bfd_target_aout_flavour ;
 int bfd_target_unknown_flavour ;
 int gdbarch_register_osabi (int ,int ,int ,int ) ;
 int gdbarch_register_osabi_sniffer (int ,int ,int ) ;
 int sparc32nbsd_aout_init_abi ;
 int sparc32nbsd_elf_init_abi ;
 int sparcnbsd_aout_osabi_sniffer ;
 int sparcnbsd_core_osabi_sniffer ;

void
_initialize_sparnbsd_tdep (void)
{
  gdbarch_register_osabi_sniffer (bfd_arch_sparc, bfd_target_aout_flavour,
      sparcnbsd_aout_osabi_sniffer);



  gdbarch_register_osabi_sniffer (bfd_arch_unknown, bfd_target_unknown_flavour,
                                  sparcnbsd_core_osabi_sniffer);

  gdbarch_register_osabi (bfd_arch_sparc, 0, GDB_OSABI_NETBSD_AOUT,
     sparc32nbsd_aout_init_abi);
  gdbarch_register_osabi (bfd_arch_sparc, 0, GDB_OSABI_NETBSD_ELF,
     sparc32nbsd_elf_init_abi);
}
