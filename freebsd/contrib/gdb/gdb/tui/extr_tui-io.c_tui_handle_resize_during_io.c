
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int dont_repeat () ;
 int tui_refresh_all_win () ;
 int tui_set_win_resized_to (int ) ;
 scalar_t__ tui_win_resized () ;

__attribute__((used)) static unsigned int
tui_handle_resize_during_io (unsigned int original_ch)
{
  if (tui_win_resized ())
    {
      tui_refresh_all_win ();
      dont_repeat ();
      tui_set_win_resized_to (FALSE);
      return '\n';
    }
  else
    return original_ch;
}
