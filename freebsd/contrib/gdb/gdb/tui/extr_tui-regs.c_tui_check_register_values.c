
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tui_data_element {int highlight; int item_no; } ;
struct TYPE_11__ {struct tui_data_element data; } ;
struct tui_win_element {TYPE_5__ which_element; } ;
struct tui_gen_win_info {scalar_t__* content; } ;
struct tui_data_info {scalar_t__ regs_content_count; TYPE_4__** regs_content; int current_group; scalar_t__ display_regs; } ;
struct frame_info {int dummy; } ;
struct TYPE_8__ {struct tui_data_info data_display_info; } ;
struct TYPE_7__ {scalar_t__ is_visible; } ;
struct TYPE_12__ {TYPE_2__ detail; TYPE_1__ generic; } ;
struct TYPE_9__ {struct tui_gen_win_info data_window; } ;
struct TYPE_10__ {TYPE_3__ which_element; } ;


 TYPE_6__* TUI_DATA_WIN ;
 int current_gdbarch ;
 int tui_display_register (struct tui_data_element*,struct tui_gen_win_info*) ;
 int tui_get_register (int ,struct frame_info*,struct tui_data_element*,int ,int*) ;
 int tui_show_registers (int ) ;

void
tui_check_register_values (struct frame_info *frame)
{
  if (TUI_DATA_WIN != ((void*)0) && TUI_DATA_WIN->generic.is_visible)
    {
      struct tui_data_info *display_info
        = &TUI_DATA_WIN->detail.data_display_info;

      if (display_info->regs_content_count <= 0 && display_info->display_regs)
 tui_show_registers (display_info->current_group);
      else
 {
   int i, j;

   for (i = 0; (i < display_info->regs_content_count); i++)
     {
       struct tui_data_element *data;
       struct tui_gen_win_info *data_item_win_ptr;
       int was_hilighted;

       data_item_win_ptr = &display_info->regs_content[i]->
                which_element.data_window;
       data = &((struct tui_win_element *)
                       data_item_win_ptr->content[0])->which_element.data;
       was_hilighted = data->highlight;

              tui_get_register (current_gdbarch, frame, data,
                                data->item_no, &data->highlight);

       if (data->highlight || was_hilighted)
  {
                  tui_display_register (data, data_item_win_ptr);
  }
     }
 }
    }
}
