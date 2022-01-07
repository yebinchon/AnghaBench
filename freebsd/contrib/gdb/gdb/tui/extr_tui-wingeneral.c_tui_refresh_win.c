
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_2__** tui_win_content ;
struct tui_gen_win_info {scalar_t__ type; scalar_t__ content_size; int * handle; scalar_t__ content; } ;
typedef int WINDOW ;
struct TYPE_3__ {struct tui_gen_win_info data_window; } ;
struct TYPE_4__ {TYPE_1__ which_element; } ;


 scalar_t__ CMD_WIN ;
 scalar_t__ DATA_WIN ;
 int wrefresh (int *) ;

void
tui_refresh_win (struct tui_gen_win_info * win_info)
{
  if (win_info->type == DATA_WIN && win_info->content_size > 0)
    {
      int i;

      for (i = 0; (i < win_info->content_size); i++)
 {
   struct tui_gen_win_info * data_item_win_ptr;

   data_item_win_ptr = &((tui_win_content)
        win_info->content)[i]->which_element.data_window;
   if (data_item_win_ptr != ((void*)0)
       && data_item_win_ptr->handle != (WINDOW *) ((void*)0))
     wrefresh (data_item_win_ptr->handle);
 }
    }
  else if (win_info->type == CMD_WIN)
    {

    }
  else
    {
      if (win_info->handle != (WINDOW *) ((void*)0))
 wrefresh (win_info->handle);
    }

  return;
}
