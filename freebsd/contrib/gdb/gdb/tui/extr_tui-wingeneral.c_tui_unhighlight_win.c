
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * handle; } ;
struct tui_win_info {TYPE_1__ generic; } ;
struct tui_gen_win_info {int dummy; } ;
typedef int WINDOW ;


 int NO_HILITE ;
 int box_win (struct tui_gen_win_info*,int ) ;
 int tui_set_win_highlight (struct tui_win_info*,int ) ;
 int wrefresh (int *) ;

void
tui_unhighlight_win (struct tui_win_info * win_info)
{
  if (win_info != ((void*)0) && win_info->generic.handle != (WINDOW *) ((void*)0))
    {
      box_win ((struct tui_gen_win_info *) win_info, NO_HILITE);
      wrefresh (win_info->generic.handle);
      tui_set_win_highlight (win_info, 0);
    }
}
