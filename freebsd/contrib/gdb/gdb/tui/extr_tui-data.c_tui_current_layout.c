
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tui_layout_type { ____Placeholder_tui_layout_type } tui_layout_type ;


 int current_layout ;

enum tui_layout_type
tui_current_layout (void)
{
  return current_layout;
}
