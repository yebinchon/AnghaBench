
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_gen_win_info {int dummy; } ;


 struct tui_gen_win_info _locator ;

struct tui_gen_win_info *
tui_locator_win_info_ptr (void)
{
  return &_locator;
}
