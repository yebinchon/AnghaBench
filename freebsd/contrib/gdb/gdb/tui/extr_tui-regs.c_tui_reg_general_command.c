
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int general_reggroup ;
 int tui_show_registers (int ) ;

__attribute__((used)) static void
tui_reg_general_command (char *arg, int from_tty)
{
  tui_show_registers (general_reggroup);
}
