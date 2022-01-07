
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int tui_set_win_resized_to (int ) ;

void
tui_sigwinch_handler (int signal)
{




  tui_set_win_resized_to (TRUE);
}
