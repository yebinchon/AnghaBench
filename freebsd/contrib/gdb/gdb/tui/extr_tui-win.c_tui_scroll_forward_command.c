
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_win_info {int dummy; } ;


 int FORWARD_SCROLL ;
 int parse_scrolling_args (char*,struct tui_win_info**,int*) ;
 int tui_enable () ;
 int tui_scroll (int ,struct tui_win_info*,int) ;

__attribute__((used)) static void
tui_scroll_forward_command (char *arg, int from_tty)
{
  int num_to_scroll = 1;
  struct tui_win_info * win_to_scroll;


  tui_enable ();
  if (arg == (char *) ((void*)0))
    parse_scrolling_args (arg, &win_to_scroll, (int *) ((void*)0));
  else
    parse_scrolling_args (arg, &win_to_scroll, &num_to_scroll);
  tui_scroll (FORWARD_SCROLL, win_to_scroll, num_to_scroll);
}
