
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dont_repeat () ;
 int rl_deprep_terminal () ;
 scalar_t__ rl_end ;
 int rl_kill_text (int ,scalar_t__) ;
 int rl_newline (int,char) ;
 int rl_prep_terminal (int ) ;
 scalar_t__ tui_active ;
 int tui_disable () ;
 int tui_enable () ;

__attribute__((used)) static int
tui_rl_switch_mode (int notused1, int notused2)
{
  if (tui_active)
    {
      tui_disable ();
      rl_prep_terminal (0);
    }
  else
    {
      rl_deprep_terminal ();
      tui_enable ();
    }


  if (rl_end)
    rl_kill_text (0, rl_end);







  rl_newline (1, '\n');


  dont_repeat ();
  return 0;
}
