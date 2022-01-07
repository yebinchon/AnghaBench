
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_6__ {scalar_t__ curch; int cur_line; } ;
struct TYPE_7__ {TYPE_2__ command_info; } ;
struct TYPE_5__ {int * handle; } ;
struct TYPE_8__ {TYPE_3__ detail; TYPE_1__ generic; } ;
typedef int FILE ;


 int GDB_READABLE ;
 int KEY_BACKSPACE ;
 TYPE_4__* TUI_CMD_WIN ;
 scalar_t__ key_is_command_char (int) ;
 int napms (int) ;
 scalar_t__ rl_end ;
 int tui_dispatch_ctrl_char (int) ;
 int tui_handle_resize_during_io (int) ;
 int tui_readline_output (int ,int ) ;
 int waddch (int *,int) ;
 int wclrtoeol (int *) ;
 int wgetch (int *) ;
 int wmove (int *,int ,scalar_t__) ;
 int wrefresh (int *) ;

int
tui_getc (FILE *fp)
{
  int ch;
  WINDOW *w;

  w = TUI_CMD_WIN->generic.handle;






  ch = wgetch (w);
  ch = tui_handle_resize_during_io (ch);


  if (ch == '\n')
    {





      if (rl_end == 0)
        {
          wmove (w, TUI_CMD_WIN->detail.command_info.cur_line, 0);



          wclrtoeol (w);
          wrefresh (w);
          napms (20);
        }
      else
        {
          wmove (w, TUI_CMD_WIN->detail.command_info.cur_line,
                 TUI_CMD_WIN->detail.command_info.curch);
          waddch (w, ch);
        }
    }

  if (key_is_command_char (ch))
    {
      ch = tui_dispatch_ctrl_char (ch);
    }

  if (ch == '\n' || ch == '\r' || ch == '\f')
    TUI_CMD_WIN->detail.command_info.curch = 0;
  if (ch == KEY_BACKSPACE)
    return '\b';

  return ch;
}
