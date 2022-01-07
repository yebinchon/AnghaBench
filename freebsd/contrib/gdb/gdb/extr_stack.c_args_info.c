
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int deprecated_selected_frame ;
 int error (char*) ;
 int gdb_stdout ;
 int print_frame_arg_vars (int ,int ) ;

void
args_info (char *ignore, int from_tty)
{
  if (!deprecated_selected_frame)
    error ("No frame selected.");
  print_frame_arg_vars (deprecated_selected_frame, gdb_stdout);
}
