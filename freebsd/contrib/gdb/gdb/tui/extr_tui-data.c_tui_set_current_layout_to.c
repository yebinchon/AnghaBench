
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tui_layout_type { ____Placeholder_tui_layout_type } tui_layout_type ;


 int current_layout ;

void
tui_set_current_layout_to (enum tui_layout_type new_layout)
{
  current_layout = new_layout;
}
