
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotate_error_begin () ;
 int fprintf_filtered (int ,char*) ;
 int fputs_filtered (char*,int ) ;
 int gdb_flush (int ) ;
 int gdb_stderr ;
 int gdb_stdout ;
 int target_terminal_ours () ;
 int wrap_here (char*) ;

void
error_output_message (char *pre_print, char *msg)
{
  target_terminal_ours ();
  wrap_here ("");
  gdb_flush (gdb_stdout);
  annotate_error_begin ();
  if (pre_print)
    fputs_filtered (pre_print, gdb_stderr);
  fputs_filtered (msg, gdb_stderr);
  fprintf_filtered (gdb_stderr, "\n");
}
