
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_overlay_breakpoints () ;
 scalar_t__ info_verbose ;
 int overlay_debugging ;
 int ovly_on ;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
overlay_manual_command (char *args, int from_tty)
{
  overlay_debugging = ovly_on;
  disable_overlay_breakpoints ();
  if (info_verbose)
    printf_unfiltered ("Overlay debugging enabled.");
}
