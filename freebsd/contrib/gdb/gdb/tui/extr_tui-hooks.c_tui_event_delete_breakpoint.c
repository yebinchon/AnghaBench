
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tui_update_all_breakpoint_info () ;

__attribute__((used)) static void
tui_event_delete_breakpoint (int number)
{
  tui_update_all_breakpoint_info ();
}
