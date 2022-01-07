
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_layout_def {int dummy; } ;


 struct tui_layout_def layout_def ;

struct tui_layout_def *
tui_layout_def (void)
{
  return &layout_def;
}
