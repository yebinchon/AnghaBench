
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_gen_win_info {int title; int * handle; } ;
typedef int WINDOW ;


 int HILITE ;
 int mvwaddstr (int *,int ,int,int ) ;
 int tui_active_border_attrs ;
 int tui_border_attrs ;
 int tui_border_hline ;
 int tui_border_llcorner ;
 int tui_border_lrcorner ;
 int tui_border_ulcorner ;
 int tui_border_urcorner ;
 int tui_border_vline ;
 int wattroff (int *,int) ;
 int wattron (int *,int) ;
 int wborder (int *,int ,int ,int ,int ,int ,int ,int ,int ) ;

void
box_win (struct tui_gen_win_info * win_info, int highlight_flag)
{
  if (win_info && win_info->handle)
    {
      WINDOW *win;
      int attrs;

      win = win_info->handle;
      if (highlight_flag == HILITE)
        attrs = tui_active_border_attrs;
      else
        attrs = tui_border_attrs;

      wattron (win, attrs);
      wborder (win, tui_border_vline, tui_border_vline,
               tui_border_hline, tui_border_hline,
               tui_border_ulcorner, tui_border_urcorner,
               tui_border_llcorner, tui_border_lrcorner);
      if (win_info->title)
        mvwaddstr (win, 0, 3, win_info->title);
      wattroff (win, attrs);
    }
}
