
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; int handle; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;


 TYPE_2__* TUI_DATA_WIN ;
 int mvwaddstr (int ,int,int,char*) ;
 int strlen (char*) ;
 int tui_check_and_display_highlight_if_needed (TYPE_2__*) ;
 int werase (int ) ;
 int wrefresh (int ) ;

void
tui_erase_data_content (char *prompt)
{
  werase (TUI_DATA_WIN->generic.handle);
  tui_check_and_display_highlight_if_needed (TUI_DATA_WIN);
  if (prompt != (char *) ((void*)0))
    {
      int half_width = (TUI_DATA_WIN->generic.width - 2) / 2;
      int x_pos;

      if (strlen (prompt) >= half_width)
 x_pos = 1;
      else
 x_pos = half_width - strlen (prompt);
      mvwaddstr (TUI_DATA_WIN->generic.handle,
   (TUI_DATA_WIN->generic.height / 2),
   x_pos,
   prompt);
    }
  wrefresh (TUI_DATA_WIN->generic.handle);
}
