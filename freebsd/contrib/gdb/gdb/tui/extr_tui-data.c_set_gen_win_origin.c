
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int y; } ;
struct tui_gen_win_info {TYPE_1__ origin; } ;



void
set_gen_win_origin (struct tui_gen_win_info * win_info, int x, int y)
{
  win_info->origin.x = x;
  win_info->origin.y = y;
}
