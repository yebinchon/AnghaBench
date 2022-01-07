
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
tui_next_win (struct tui_win_info * cur_win)
{
  enum tui_win_type type = cur_win->generic.type;
  struct tui_win_info * next_win = (struct tui_win_info *) ((void*)0);

  if (cur_win->generic.type == CMD_WIN)
    type = SRC_WIN;
  else
    type = cur_win->generic.type + 1;
  while (type != cur_win->generic.type && (next_win == ((void*)0)))
    {
      if (tui_win_list[type] && tui_win_list[type]->generic.is_visible)
 next_win = tui_win_list[type];
      else
 {
   if (type == CMD_WIN)
     type = SRC_WIN;
   else
     type++;
 }
    }

  return next_win;
}
