
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_layout_def {int split; } ;


 int tui_enable () ;
 int tui_handle_xdb_layout (struct tui_layout_def*) ;
 struct tui_layout_def* tui_layout_def () ;

__attribute__((used)) static void
tui_toggle_split_layout_command (char *arg, int from_tty)
{
  struct tui_layout_def * layout_def = tui_layout_def ();


  tui_enable ();
  layout_def->split = (!layout_def->split);
  tui_handle_xdb_layout (layout_def);
}
