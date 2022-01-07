
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int regs_content_count; } ;
struct TYPE_5__ {TYPE_1__ data_display_info; } ;
struct TYPE_6__ {TYPE_2__ detail; } ;


 TYPE_3__* TUI_DATA_WIN ;
 int tui_delete_data_content_windows () ;
 int tui_display_data_from_line (int) ;
 int tui_erase_data_content (char*) ;
 int tui_line_from_reg_element_no (int) ;

void
tui_display_data_from (int element_no, int reuse_windows)
{
  int first_line = (-1);

  if (element_no < TUI_DATA_WIN->detail.data_display_info.regs_content_count)
    first_line = tui_line_from_reg_element_no (element_no);
  else
    {
    }

  if (first_line >= 0)
    {
      tui_erase_data_content ((char *) ((void*)0));
      if (!reuse_windows)
 tui_delete_data_content_windows ();
      tui_display_data_from_line (first_line);
    }
}
