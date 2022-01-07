
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; int ** list; } ;


 TYPE_1__ source_windows ;

void
tui_clear_source_windows (void)
{
  source_windows.list[0] = ((void*)0);
  source_windows.list[1] = ((void*)0);
  source_windows.count = 0;
}
