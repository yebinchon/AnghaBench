
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int deprecated_selected_frame ;
 int error (char*) ;
 int gdb_stdout ;
 int print_frame_local_vars (int ,int ,int ) ;

void
locals_info (char *args, int from_tty)
{
  if (!deprecated_selected_frame)
    error ("No frame selected.");
  print_frame_local_vars (deprecated_selected_frame, 0, gdb_stdout);
}
