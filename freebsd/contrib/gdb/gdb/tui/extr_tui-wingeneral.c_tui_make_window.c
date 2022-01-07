
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int y; } ;
struct tui_gen_win_info {int is_visible; int * handle; TYPE_1__ origin; int width; int height; } ;
typedef int WINDOW ;


 int BOX_WINDOW ;
 int NO_HILITE ;
 int TRUE ;
 int box_win (struct tui_gen_win_info*,int ) ;
 int * newwin (int ,int ,int ,int ) ;
 int scrollok (int *,int ) ;

void
tui_make_window (struct tui_gen_win_info * win_info, int box_it)
{
  WINDOW *handle;

  handle = newwin (win_info->height,
     win_info->width,
     win_info->origin.y,
     win_info->origin.x);
  win_info->handle = handle;
  if (handle != (WINDOW *) ((void*)0))
    {
      if (box_it == BOX_WINDOW)
 box_win (win_info, NO_HILITE);
      win_info->is_visible = TRUE;
      scrollok (handle, TRUE);
    }
}
