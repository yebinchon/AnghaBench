
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_overlay_breakpoints () ;
 scalar_t__ info_verbose ;
 int overlay_debugging ;
 int ovly_off ;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
overlay_off_command (char *args, int from_tty)
{
  overlay_debugging = ovly_off;
  disable_overlay_breakpoints ();
  if (info_verbose)
    printf_unfiltered ("Overlay debugging disabled.");
}
