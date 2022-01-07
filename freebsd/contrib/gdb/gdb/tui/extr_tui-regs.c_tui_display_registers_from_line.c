
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
 int tui_display_reg_element_at_line (int,int) ;
 int tui_first_reg_element_no_inline (int) ;
 int tui_last_regs_line_no () ;
 int tui_line_from_reg_element_no (int) ;

int
tui_display_registers_from_line (int line_no, int force_display)
{
  if (TUI_DATA_WIN->detail.data_display_info.regs_content_count > 0)
    {
      int line, element_no;

      if (line_no < 0)
 line = 0;
      else if (force_display)
 {



   if (line_no >= tui_last_regs_line_no ())
     {
       if ((line = tui_line_from_reg_element_no (
   TUI_DATA_WIN->detail.data_display_info.regs_content_count - 1)) < 0)
  line = 0;
     }
   else
     line = line_no;
 }
      else
 line = line_no;

      element_no = tui_first_reg_element_no_inline (line);
      if (element_no < TUI_DATA_WIN->detail.data_display_info.regs_content_count)
 tui_display_reg_element_at_line (element_no, line);
      else
 line = (-1);

      return line;
    }

  return (-1);
}
