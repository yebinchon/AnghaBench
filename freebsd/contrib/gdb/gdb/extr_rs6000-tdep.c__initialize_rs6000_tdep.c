
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_prefix_cmd (char*,int ,int ,char*,int *,char*,int ,int *) ;
 int bfd_arch_powerpc ;
 int bfd_arch_rs6000 ;
 int class_info ;
 int gdbarch_register (int ,int ,int ) ;
 int info_powerpc_cmdlist ;
 int infolist ;
 int rs6000_dump_tdep ;
 int rs6000_gdbarch_init ;
 int rs6000_info_powerpc_command ;

void
_initialize_rs6000_tdep (void)
{
  gdbarch_register (bfd_arch_rs6000, rs6000_gdbarch_init, rs6000_dump_tdep);
  gdbarch_register (bfd_arch_powerpc, rs6000_gdbarch_init, rs6000_dump_tdep);


  add_prefix_cmd ("powerpc", class_info, rs6000_info_powerpc_command,
    "Various POWERPC info specific commands.",
    &info_powerpc_cmdlist, "info powerpc ", 0, &infolist);
}
