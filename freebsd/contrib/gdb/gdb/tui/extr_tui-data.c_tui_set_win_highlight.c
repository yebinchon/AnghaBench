
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_win_info {int is_highlighted; } ;



void
tui_set_win_highlight (struct tui_win_info *win_info, int highlight)
{
  if (win_info != ((void*)0))
    win_info->is_highlighted = highlight;
}
