
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int help_list (int ,char*,int,int ) ;
 int printf_unfiltered (char*) ;
 int serial_set_cmdlist ;

__attribute__((used)) static void
serial_set_cmd (char *args, int from_tty)
{
  printf_unfiltered ("\"set serial\" must be followed by the name of a command.\n");
  help_list (serial_set_cmdlist, "set serial ", -1, gdb_stdout);
}
