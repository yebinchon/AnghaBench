
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int regs_column_count; int regs_content_count; } ;
struct TYPE_5__ {TYPE_1__ data_display_info; } ;
struct TYPE_6__ {TYPE_2__ detail; } ;


 TYPE_3__* TUI_DATA_WIN ;

int
tui_last_reg_element_no_in_line (int line_no)
{
  if ((line_no * TUI_DATA_WIN->detail.data_display_info.regs_column_count) <=
      TUI_DATA_WIN->detail.data_display_info.regs_content_count)
    return ((line_no + 1) *
     TUI_DATA_WIN->detail.data_display_info.regs_column_count) - 1;
  else
    return (-1);
}
