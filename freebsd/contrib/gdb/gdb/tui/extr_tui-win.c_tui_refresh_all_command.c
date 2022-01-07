
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tui_enable () ;
 int tui_refresh_all_win () ;

__attribute__((used)) static void
tui_refresh_all_command (char *arg, int from_tty)
{

  tui_enable ();

  tui_refresh_all_win ();
}
