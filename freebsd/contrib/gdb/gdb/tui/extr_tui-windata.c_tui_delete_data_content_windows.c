
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__** tui_win_content ;
struct tui_gen_win_info {int is_visible; int * handle; } ;
typedef int WINDOW ;
struct TYPE_6__ {int content_size; scalar_t__ content; } ;
struct TYPE_8__ {TYPE_2__ generic; } ;
struct TYPE_5__ {struct tui_gen_win_info data_window; } ;
struct TYPE_7__ {TYPE_1__ which_element; } ;


 int FALSE ;
 TYPE_4__* TUI_DATA_WIN ;
 int tui_delete_win (int *) ;

void
tui_delete_data_content_windows (void)
{
  int i;
  struct tui_gen_win_info * data_item_win_ptr;

  for (i = 0; (i < TUI_DATA_WIN->generic.content_size); i++)
    {
      data_item_win_ptr = &((tui_win_content)
        TUI_DATA_WIN->generic.content)[i]->which_element.data_window;
      tui_delete_win (data_item_win_ptr->handle);
      data_item_win_ptr->handle = (WINDOW *) ((void*)0);
      data_item_win_ptr->is_visible = FALSE;
    }
}
