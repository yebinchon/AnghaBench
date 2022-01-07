
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BACKWARD_SCROLL ;
 int TUI_DATA_WIN ;
 int tui_scroll (int ,int ,int) ;

__attribute__((used)) static void
tui_scroll_regs_backward_command (char *arg, int from_tty)
{
  tui_scroll (BACKWARD_SCROLL, TUI_DATA_WIN, 1);
}
