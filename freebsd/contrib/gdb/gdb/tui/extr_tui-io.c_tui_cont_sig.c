
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int handle; } ;
struct TYPE_5__ {int curch; int start_line; } ;
struct TYPE_6__ {TYPE_1__ command_info; } ;
struct TYPE_8__ {TYPE_3__ generic; TYPE_2__ detail; } ;


 TYPE_4__* TUI_CMD_WIN ;
 int resetty () ;
 int signal (int,void (*) (int)) ;
 scalar_t__ tui_active ;
 int tui_refresh_all_win () ;
 int wmove (int ,int ,int ) ;
 int wrefresh (int ) ;

__attribute__((used)) static void
tui_cont_sig (int sig)
{
  if (tui_active)
    {


      resetty ();


      tui_refresh_all_win ();


      wmove (TUI_CMD_WIN->generic.handle,
             TUI_CMD_WIN->detail.command_info.start_line,
             TUI_CMD_WIN->detail.command_info.curch);
      wrefresh (TUI_CMD_WIN->generic.handle);
    }
  signal (sig, tui_cont_sig);
}
