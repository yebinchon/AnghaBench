
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct tui_win_info {scalar_t__ is_highlighted; TYPE_1__ generic; } ;


 scalar_t__ CMD_WIN ;
 int tui_highlight_win (struct tui_win_info*) ;
 int tui_unhighlight_win (struct tui_win_info*) ;

void
tui_check_and_display_highlight_if_needed (struct tui_win_info * win_info)
{
  if (win_info != ((void*)0) && win_info->generic.type != CMD_WIN)
    {
      if (win_info->is_highlighted)
 tui_highlight_win (win_info);
      else
 tui_unhighlight_win (win_info);

    }
  return;
}
