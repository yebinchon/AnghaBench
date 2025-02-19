
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int help_list (int ,char*,int,int ) ;
 int overlaylist ;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
overlay_command (char *args, int from_tty)
{
  printf_unfiltered
    ("\"overlay\" must be followed by the name of an overlay command.\n");
  help_list (overlaylist, "overlay ", -1, gdb_stdout);
}
