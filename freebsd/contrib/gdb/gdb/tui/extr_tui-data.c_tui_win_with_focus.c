
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_win_info {int dummy; } ;


 struct tui_win_info* win_with_focus ;

struct tui_win_info *
tui_win_with_focus (void)
{
  return win_with_focus;
}
