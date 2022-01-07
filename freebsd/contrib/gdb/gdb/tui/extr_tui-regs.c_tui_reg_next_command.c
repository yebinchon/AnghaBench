
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct reggroup {int dummy; } ;
struct TYPE_4__ {struct reggroup* current_group; } ;
struct TYPE_5__ {TYPE_1__ data_display_info; } ;
struct TYPE_6__ {TYPE_2__ detail; } ;


 TYPE_3__* TUI_DATA_WIN ;
 int current_gdbarch ;
 struct reggroup* reggroup_next (int ,struct reggroup*) ;
 int tui_show_registers (struct reggroup*) ;

__attribute__((used)) static void
tui_reg_next_command (char *arg, int from_tty)
{
  if (TUI_DATA_WIN != 0)
    {
      struct reggroup *group
        = TUI_DATA_WIN->detail.data_display_info.current_group;

      group = reggroup_next (current_gdbarch, group);
      if (group == 0)
        group = reggroup_next (current_gdbarch, 0);

      if (group)
        tui_show_registers (group);
    }
}
