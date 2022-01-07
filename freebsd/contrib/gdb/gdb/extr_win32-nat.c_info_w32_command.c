
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_info ;
 int gdb_stdout ;
 int help_list (int ,char*,int ,int ) ;
 int info_w32_cmdlist ;

__attribute__((used)) static void
info_w32_command (char *args, int from_tty)
{
  help_list (info_w32_cmdlist, "info w32 ", class_info, gdb_stdout);
}
