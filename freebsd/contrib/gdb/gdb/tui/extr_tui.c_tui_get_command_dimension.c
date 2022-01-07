
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; } ;
struct TYPE_4__ {TYPE_1__ generic; } ;


 TYPE_2__* TUI_CMD_WIN ;
 int tui_active ;

int
tui_get_command_dimension (int *width, int *height)
{
  if (!tui_active || (TUI_CMD_WIN == ((void*)0)))
    {
      return 0;
    }

  *width = TUI_CMD_WIN->generic.width;
  *height = TUI_CMD_WIN->generic.height;
  return 1;
}
