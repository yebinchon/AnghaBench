
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int regs_content_count; int regs_column_count; } ;
struct TYPE_5__ {TYPE_1__ data_display_info; } ;
struct TYPE_6__ {TYPE_2__ detail; } ;


 TYPE_3__* TUI_DATA_WIN ;

int
tui_line_from_reg_element_no (int element_no)
{
  if (element_no < TUI_DATA_WIN->detail.data_display_info.regs_content_count)
    {
      int i, line = (-1);

      i = 1;
      while (line == (-1))
 {
   if (element_no <
       (TUI_DATA_WIN->detail.data_display_info.regs_column_count * i))
     line = i - 1;
   else
     i++;
 }

      return line;
    }
  else
    return (-1);
}
