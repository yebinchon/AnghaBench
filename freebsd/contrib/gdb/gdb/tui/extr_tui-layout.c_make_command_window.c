
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_win_info {int can_highlight; } ;


 int CMD_WIN ;
 int DONT_BOX_WINDOW ;
 int FALSE ;
 int init_and_make_win (void**,int ,int,int ,int ,int,int ) ;
 int tui_term_width () ;

__attribute__((used)) static void
make_command_window (struct tui_win_info * * win_info_ptr, int height, int origin_y)
{
  init_and_make_win ((void **) win_info_ptr,
     CMD_WIN,
     height,
     tui_term_width (),
     0,
     origin_y,
     DONT_BOX_WINDOW);

  (*win_info_ptr)->can_highlight = FALSE;
}
