
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__** tui_win_content ;
struct tui_gen_win_info {scalar_t__ is_visible; int * handle; } ;
typedef int WINDOW ;
struct TYPE_5__ {int content_size; scalar_t__ content; } ;
struct TYPE_8__ {TYPE_1__ generic; } ;
struct TYPE_6__ {struct tui_gen_win_info data_window; } ;
struct TYPE_7__ {TYPE_2__ which_element; } ;


 TYPE_4__* TUI_DATA_WIN ;

int
tui_first_data_item_displayed (void)
{
  int element_no = (-1);
  int i;

  for (i = 0; (i < TUI_DATA_WIN->generic.content_size && element_no < 0); i++)
    {
      struct tui_gen_win_info * data_item_win;

      data_item_win = &((tui_win_content)
        TUI_DATA_WIN->generic.content)[i]->which_element.data_window;
      if (data_item_win->handle != (WINDOW *) ((void*)0) && data_item_win->is_visible)
 element_no = i;
    }

  return element_no;
}
