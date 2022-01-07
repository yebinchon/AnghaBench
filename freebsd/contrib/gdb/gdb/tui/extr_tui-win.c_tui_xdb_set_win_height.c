
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CMD_WIN ;
 scalar_t__ TUI_FAILURE ;
 int XDBWIN_HEIGHT_USAGE ;
 int atoi (char*) ;
 int new_height_ok (int ,int) ;
 scalar_t__ tui_adjust_win_heights (int ,int) ;
 int tui_enable () ;
 int tui_term_height () ;
 int * tui_win_list ;
 int warning (char*,int ) ;

__attribute__((used)) static void
tui_xdb_set_win_height (char *arg, int from_tty)
{

  tui_enable ();
  if (arg != (char *) ((void*)0))
    {
      int input_no = atoi (arg);

      if (input_no > 0)
 {
   int new_height = tui_term_height () - (input_no + 1);

   if (!new_height_ok (tui_win_list[CMD_WIN], new_height) ||
       tui_adjust_win_heights (tui_win_list[CMD_WIN],
        new_height) == TUI_FAILURE)
     warning ("Invalid window height specified.\n%s",
       XDBWIN_HEIGHT_USAGE);
 }
      else
 warning ("Invalid window height specified.\n%s",
   XDBWIN_HEIGHT_USAGE);
    }
  else
    warning ("Invalid window height specified.\n%s", XDBWIN_HEIGHT_USAGE);
}
