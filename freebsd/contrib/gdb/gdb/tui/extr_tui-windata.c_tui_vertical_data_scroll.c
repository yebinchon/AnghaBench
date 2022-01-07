
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum tui_scroll_direction { ____Placeholder_tui_scroll_direction } tui_scroll_direction ;
struct TYPE_4__ {int regs_content_count; } ;
struct TYPE_5__ {TYPE_1__ data_display_info; } ;
struct TYPE_6__ {TYPE_2__ detail; } ;


 int FORWARD_SCROLL ;
 TYPE_3__* TUI_DATA_WIN ;
 int tui_delete_data_content_windows () ;
 int tui_display_data_from_line (int) ;
 int tui_erase_data_content (char*) ;
 int tui_first_data_item_displayed () ;
 int tui_line_from_reg_element_no (int) ;

void
tui_vertical_data_scroll (enum tui_scroll_direction scroll_direction, int num_to_scroll)
{
  int first_element_no;
  int first_line = (-1);

  first_element_no = tui_first_data_item_displayed ();
  if (first_element_no < TUI_DATA_WIN->detail.data_display_info.regs_content_count)
    first_line = tui_line_from_reg_element_no (first_element_no);
  else
    {


    }

  if (first_line >= 0)
    {
      int last_element_no, last_line;

      if (scroll_direction == FORWARD_SCROLL)
 first_line += num_to_scroll;
      else
 first_line -= num_to_scroll;
      tui_erase_data_content ((char *) ((void*)0));
      tui_delete_data_content_windows ();
      tui_display_data_from_line (first_line);
    }
}
