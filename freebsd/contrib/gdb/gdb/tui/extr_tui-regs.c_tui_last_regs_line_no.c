
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int regs_content_count; int regs_column_count; } ;
struct TYPE_4__ {TYPE_2__ data_display_info; } ;
struct TYPE_6__ {TYPE_1__ detail; } ;


 TYPE_3__* TUI_DATA_WIN ;

int
tui_last_regs_line_no (void)
{
  int num_lines = (-1);

  if (TUI_DATA_WIN->detail.data_display_info.regs_content_count > 0)
    {
      num_lines = (TUI_DATA_WIN->detail.data_display_info.regs_content_count /
    TUI_DATA_WIN->detail.data_display_info.regs_column_count);
      if (TUI_DATA_WIN->detail.data_display_info.regs_content_count %
   TUI_DATA_WIN->detail.data_display_info.regs_column_count)
 num_lines++;
    }
  return num_lines;
}
