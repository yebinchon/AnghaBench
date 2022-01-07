
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int RETURN_ERROR ;
 int annotate_error_begin () ;
 int do_write ;
 int error_begin_hook () ;
 scalar_t__ error_pre_print ;
 int fprintf_filtered (int ,char*) ;
 int fputs_filtered (scalar_t__,int ) ;
 int gdb_flush (int ) ;
 int gdb_lasterr ;
 int gdb_stderr ;
 int gdb_stdout ;
 int target_terminal_ours () ;
 int throw_exception (int ) ;
 int ui_file_put (struct ui_file*,int ,int ) ;
 int ui_file_rewind (int ) ;
 int wrap_here (char*) ;

void
error_stream (struct ui_file *stream)
{
  if (error_begin_hook)
    error_begin_hook ();


  ui_file_rewind (gdb_lasterr);
  ui_file_put (stream, do_write, gdb_lasterr);


  target_terminal_ours ();
  wrap_here ("");
  gdb_flush (gdb_stdout);
  annotate_error_begin ();
  if (error_pre_print)
    fputs_filtered (error_pre_print, gdb_stderr);
  ui_file_put (stream, do_write, gdb_stderr);
  fprintf_filtered (gdb_stderr, "\n");

  throw_exception (RETURN_ERROR);
}
