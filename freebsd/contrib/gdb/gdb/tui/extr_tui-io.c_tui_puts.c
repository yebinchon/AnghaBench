
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_5__ {int cur_line; int start_line; int curch; } ;
struct TYPE_6__ {TYPE_1__ command_info; } ;
struct TYPE_7__ {int * handle; } ;
struct TYPE_8__ {TYPE_2__ detail; TYPE_3__ generic; } ;


 TYPE_4__* TUI_CMD_WIN ;
 int fflush (int ) ;
 int getyx (int *,int ,int ) ;
 int stdout ;
 int waddch (int *,char) ;
 int wrefresh (int *) ;

void
tui_puts (const char *string)
{
  static int tui_skip_line = -1;
  char c;
  WINDOW *w;

  w = TUI_CMD_WIN->generic.handle;
  while ((c = *string++) != 0)
    {


      if (c == '\032')
        {
          tui_skip_line++;
        }
      else if (tui_skip_line != 1)
        {
          tui_skip_line = -1;
          waddch (w, c);
        }
      else if (c == '\n')
        tui_skip_line = -1;
    }
  getyx (w, TUI_CMD_WIN->detail.command_info.cur_line,
         TUI_CMD_WIN->detail.command_info.curch);
  TUI_CMD_WIN->detail.command_info.start_line = TUI_CMD_WIN->detail.command_info.cur_line;


  wrefresh (w);
  fflush (stdout);
}
