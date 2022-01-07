
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_list {int dummy; } ;


 struct tui_list source_windows ;

struct tui_list *
tui_source_windows (void)
{
  return &source_windows;
}
