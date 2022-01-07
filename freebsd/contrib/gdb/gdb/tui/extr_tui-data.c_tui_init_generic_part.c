
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ y; scalar_t__ x; } ;
struct tui_gen_win_info {scalar_t__ title; int is_visible; int content_in_use; int * content; int * handle; scalar_t__ last_visible_line; scalar_t__ content_size; scalar_t__ viewport_height; TYPE_1__ origin; scalar_t__ height; scalar_t__ width; } ;
typedef int WINDOW ;


 int FALSE ;

void
tui_init_generic_part (struct tui_gen_win_info * win)
{
  win->width =
    win->height =
    win->origin.x =
    win->origin.y =
    win->viewport_height =
    win->content_size =
    win->last_visible_line = 0;
  win->handle = (WINDOW *) ((void*)0);
  win->content = ((void*)0);
  win->content_in_use =
    win->is_visible = FALSE;
  win->title = 0;
}
