
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tui_xdb_set_win_height (char*,int) ;

__attribute__((used)) static void
tui_xdb_set_win_height_command (char *arg, int from_tty)
{
  tui_xdb_set_win_height (arg, from_tty);
}
