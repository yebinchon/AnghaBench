
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_gen_win_info {int dummy; } ;


 int make_visible (struct tui_gen_win_info*,int ) ;

void
tui_make_invisible (struct tui_gen_win_info *win_info)
{
  make_visible (win_info, 0);
}
