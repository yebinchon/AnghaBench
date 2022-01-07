
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LAYOUT_USAGE ;
 scalar_t__ TUI_SUCCESS ;
 int tui_enable () ;
 scalar_t__ tui_set_layout_for_display_command (char*) ;
 int warning (char*,int ) ;

__attribute__((used)) static void
tui_layout_command (char *arg, int from_tty)
{

  tui_enable ();


  if (tui_set_layout_for_display_command (arg) != TUI_SUCCESS)
    warning ("Invalid layout specified.\n%s", LAYOUT_USAGE);

}
