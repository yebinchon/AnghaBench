
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tui_win_info {int dummy; } ;
struct TYPE_2__ {int count; void** list; } ;


 TYPE_1__ source_windows ;

void
tui_add_to_source_windows (struct tui_win_info * win_info)
{
  if (source_windows.count < 2)
    source_windows.list[source_windows.count++] = (void *) win_info;
}
