
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int tui_enable () ;
 int tui_set_default_tab_len (int) ;
 int warning (char*) ;

__attribute__((used)) static void
tui_set_tab_width_command (char *arg, int from_tty)
{

  tui_enable ();
  if (arg != (char *) ((void*)0))
    {
      int ts;

      ts = atoi (arg);
      if (ts > 0)
 tui_set_default_tab_len (ts);
      else
 warning ("Tab widths greater than 0 must be specified.\n");
    }
}
