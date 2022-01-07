
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;
struct TYPE_3__ {int is_visible; } ;
struct TYPE_4__ {TYPE_1__ generic; } ;


 scalar_t__ tui_active ;
 TYPE_2__** tui_win_list ;

int
tui_is_window_visible (enum tui_win_type type)
{
  if (tui_active == 0)
    return 0;

  if (tui_win_list[type] == 0)
    return 0;

  return tui_win_list[type]->generic.is_visible;
}
