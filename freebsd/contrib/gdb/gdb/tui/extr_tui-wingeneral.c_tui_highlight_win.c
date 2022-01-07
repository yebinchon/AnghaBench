
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * handle; } ;
struct tui_win_info {TYPE_1__ generic; scalar_t__ can_highlight; } ;
struct tui_gen_win_info {int dummy; } ;
typedef int WINDOW ;


 int HILITE ;
 int box_win (struct tui_gen_win_info*,int ) ;
 int tui_set_win_highlight (struct tui_win_info*,int) ;
 int wrefresh (int *) ;

void
tui_highlight_win (struct tui_win_info * win_info)
{
  if (win_info != ((void*)0)
      && win_info->can_highlight
      && win_info->generic.handle != (WINDOW *) ((void*)0))
    {
      box_win ((struct tui_gen_win_info *) win_info, HILITE);
      wrefresh (win_info->generic.handle);
      tui_set_win_highlight (win_info, 1);
    }
}
