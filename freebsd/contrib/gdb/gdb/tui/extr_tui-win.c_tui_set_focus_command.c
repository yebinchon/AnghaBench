
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tui_enable () ;
 int tui_set_focus (char*,int) ;

__attribute__((used)) static void
tui_set_focus_command (char *arg, int from_tty)
{

  tui_enable ();
  tui_set_focus (arg, from_tty);
}
