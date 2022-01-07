
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__** tui_win_content ;
struct tui_gen_win_info {int is_visible; int * handle; } ;
typedef int WINDOW ;
struct TYPE_4__ {struct tui_gen_win_info data_window; } ;
struct TYPE_5__ {TYPE_1__ which_element; } ;


 int FALSE ;
 int tui_delete_win (int *) ;

void
tui_del_data_windows (tui_win_content content, int content_size)
{
  int i;





  for (i = 0; i < content_size; i++)
    {
      struct tui_gen_win_info * generic_win = &content[i]->which_element.data_window;

      if (generic_win != (struct tui_gen_win_info *) ((void*)0))
 {
   tui_delete_win (generic_win->handle);
   generic_win->handle = (WINDOW *) ((void*)0);
   generic_win->is_visible = FALSE;
 }
    }
}
