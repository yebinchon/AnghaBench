
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_info ;
 int gdb_stdout ;
 int help_list (int ,char*,int ,int ) ;
 int info_powerpc_cmdlist ;

__attribute__((used)) static void
rs6000_info_powerpc_command (char *args, int from_tty)
{
  help_list (info_powerpc_cmdlist, "info powerpc ", class_info, gdb_stdout);
}
