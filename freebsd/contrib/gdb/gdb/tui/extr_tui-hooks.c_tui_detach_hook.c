
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tui_display_main () ;
 int tui_show_frame_info (int ) ;

__attribute__((used)) static void
tui_detach_hook (void)
{
  tui_show_frame_info (0);
  tui_display_main ();
}
