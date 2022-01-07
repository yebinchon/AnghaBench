
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tui_win_info {int dummy; } ;
struct TYPE_2__ {int count; scalar_t__* list; } ;


 int tui_clear_win_detail (struct tui_win_info*) ;
 TYPE_1__* tui_source_windows () ;

void
tui_clear_source_windows_detail (void)
{
  int i;

  for (i = 0; i < (tui_source_windows ())->count; i++)
    tui_clear_win_detail ((struct tui_win_info *) (tui_source_windows ())->list[i]);
}
