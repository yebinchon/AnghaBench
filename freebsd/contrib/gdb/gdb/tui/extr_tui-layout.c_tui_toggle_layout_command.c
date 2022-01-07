
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_layout_def {scalar_t__ display_mode; int split; } ;


 scalar_t__ DISASSEM_WIN ;
 scalar_t__ SRC_WIN ;
 int tui_enable () ;
 int tui_handle_xdb_layout (struct tui_layout_def*) ;
 struct tui_layout_def* tui_layout_def () ;

__attribute__((used)) static void
tui_toggle_layout_command (char *arg, int from_tty)
{
  struct tui_layout_def * layout_def = tui_layout_def ();


  tui_enable ();
  if (layout_def->display_mode == SRC_WIN)
    layout_def->display_mode = DISASSEM_WIN;
  else
    layout_def->display_mode = SRC_WIN;

  if (!layout_def->split)
    tui_handle_xdb_layout (layout_def);
}
