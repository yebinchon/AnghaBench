
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; } ;
struct TYPE_4__ {TYPE_1__ generic; } ;


 TYPE_2__* TUI_CMD_WIN ;
 int execute_command (char*,int ) ;
 int rl_get_screen_size (int*,int*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ tui_active ;

void
tui_update_gdb_sizes (void)
{
  char cmd[50];
  int screenheight, screenwidth;

  rl_get_screen_size (&screenheight, &screenwidth);

  sprintf (cmd, "set width %d",
           tui_active ? TUI_CMD_WIN->generic.width : screenwidth);
  execute_command (cmd, 0);
  sprintf (cmd, "set height %d",
           tui_active ? TUI_CMD_WIN->generic.height : screenheight);
  execute_command (cmd, 0);
}
