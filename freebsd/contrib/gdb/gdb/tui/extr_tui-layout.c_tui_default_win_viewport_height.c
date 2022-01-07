
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;
typedef enum tui_layout_type { ____Placeholder_tui_layout_type } tui_layout_type ;


 scalar_t__ TUI_CMD_WIN ;
 int tui_default_win_height (int,int) ;
 scalar_t__* tui_win_list ;

int
tui_default_win_viewport_height (enum tui_win_type type,
     enum tui_layout_type layout)
{
  int h;

  h = tui_default_win_height (type, layout);

  if (tui_win_list[type] == TUI_CMD_WIN)
    h -= 1;
  else
    h -= 2;

  return h;
}
