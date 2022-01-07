
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int add_cmd (char*,int ,int ,char*,int *) ;
 int add_com (char*,int ,int ,char*) ;
 int add_prefix_cmd (char*,int ,int ,char*,int *,char*,int ,struct cmd_list_element**) ;
 int class_tui ;
 struct cmd_list_element** tui_get_cmd_list () ;
 int tui_reg_command ;
 int tui_reg_float_command ;
 int tui_reg_general_command ;
 int tui_reg_next_command ;
 int tui_reg_system_command ;
 int tui_scroll_regs_backward_command ;
 int tui_scroll_regs_forward_command ;
 int tuireglist ;
 scalar_t__ xdb_commands ;

void
_initialize_tui_regs (void)
{
  struct cmd_list_element **tuicmd;

  tuicmd = tui_get_cmd_list ();

  add_prefix_cmd ("reg", class_tui, tui_reg_command,
                  "TUI commands to control the register window.",
                  &tuireglist, "tui reg ", 0,
                  tuicmd);

  add_cmd ("float", class_tui, tui_reg_float_command,
           "Display only floating point registers\n",
           &tuireglist);
  add_cmd ("general", class_tui, tui_reg_general_command,
           "Display only general registers\n",
           &tuireglist);
  add_cmd ("system", class_tui, tui_reg_system_command,
           "Display only system registers\n",
           &tuireglist);
  add_cmd ("next", class_tui, tui_reg_next_command,
           "Display next register group\n",
           &tuireglist);

  if (xdb_commands)
    {
      add_com ("fr", class_tui, tui_reg_float_command,
        "Display only floating point registers\n");
      add_com ("gr", class_tui, tui_reg_general_command,
        "Display only general registers\n");
      add_com ("sr", class_tui, tui_reg_system_command,
        "Display only special registers\n");
      add_com ("+r", class_tui, tui_scroll_regs_forward_command,
        "Scroll the registers window forward\n");
      add_com ("-r", class_tui, tui_scroll_regs_backward_command,
        "Scroll the register window backward\n");
    }
}
