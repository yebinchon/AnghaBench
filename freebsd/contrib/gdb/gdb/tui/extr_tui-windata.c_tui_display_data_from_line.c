
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data_content_count; } ;
struct TYPE_6__ {TYPE_1__ data_display_info; } ;
struct TYPE_7__ {TYPE_2__ detail; } ;


 int FALSE ;
 int TRUE ;
 TYPE_3__* TUI_DATA_WIN ;
 int tui_check_and_display_highlight_if_needed (TYPE_3__*) ;
 scalar_t__ tui_display_registers_from_line (int,int ) ;
 int tui_last_regs_line_no () ;

void
tui_display_data_from_line (int line_no)
{
  int _line_no = line_no;

  if (line_no < 0)
    _line_no = 0;

  tui_check_and_display_highlight_if_needed (TUI_DATA_WIN);


  if (TUI_DATA_WIN->detail.data_display_info.data_content_count <= 0)
    tui_display_registers_from_line (_line_no, TRUE);
  else
    {
      int element_no, start_line_no;
      int regs_last_line = tui_last_regs_line_no ();



      if (tui_display_registers_from_line (_line_no, FALSE) < 0)
 {



   if (regs_last_line < _line_no)
     {

     }
 }
      else
 {




 }

    }
}
