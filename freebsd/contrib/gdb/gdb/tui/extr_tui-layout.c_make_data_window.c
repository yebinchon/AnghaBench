
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_win_info {int dummy; } ;


 int BOX_WINDOW ;
 int DATA_WIN ;
 int init_and_make_win (void**,int ,int,int ,int ,int,int ) ;
 int tui_term_width () ;

__attribute__((used)) static void
make_data_window (struct tui_win_info * * win_info_ptr, int height, int origin_y)
{
  init_and_make_win ((void **) win_info_ptr,
     DATA_WIN,
     height,
     tui_term_width (),
     0,
     origin_y,
     BOX_WINDOW);
}
