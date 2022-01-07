
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_win_info {int dummy; } ;


 int LEFT_SCROLL ;
 int parse_scrolling_args (char*,struct tui_win_info**,int*) ;
 int tui_enable () ;
 int tui_scroll (int ,struct tui_win_info*,int) ;

__attribute__((used)) static void
tui_scroll_left_command (char *arg, int from_tty)
{
  int num_to_scroll;
  struct tui_win_info * win_to_scroll;


  tui_enable ();
  parse_scrolling_args (arg, &win_to_scroll, &num_to_scroll);
  tui_scroll (LEFT_SCROLL, win_to_scroll, num_to_scroll);
}
