
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; scalar_t__ is_visible; } ;
struct tui_win_info {TYPE_1__ generic; } ;
typedef enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;


 int CMD_WIN ;
 int SRC_WIN ;
 struct tui_win_info** tui_win_list ;

struct tui_win_info *
tui_prev_win (struct tui_win_info * cur_win)
{
  enum tui_win_type type = cur_win->generic.type;
  struct tui_win_info * prev = (struct tui_win_info *) ((void*)0);

  if (cur_win->generic.type == SRC_WIN)
    type = CMD_WIN;
  else
    type = cur_win->generic.type - 1;
  while (type != cur_win->generic.type && (prev == ((void*)0)))
    {
      if (tui_win_list[type]->generic.is_visible)
 prev = tui_win_list[type];
      else
 {
   if (type == SRC_WIN)
     type = CMD_WIN;
   else
     type--;
 }
    }

  return prev;
}
