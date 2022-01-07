
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int help_list (int ,char*,int,int ) ;
 int printf_unfiltered (char*) ;
 int tuireglist ;

__attribute__((used)) static void
tui_reg_command (char *args, int from_tty)
{
  printf_unfiltered ("\"tui reg\" must be followed by the name of a "
                     "tui reg command.\n");
  help_list (tuireglist, "tui reg ", -1, gdb_stdout);
}
