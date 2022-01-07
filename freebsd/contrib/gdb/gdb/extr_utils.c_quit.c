
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial {int dummy; } ;
struct TYPE_2__ {int * to_terminal_ours; } ;


 int RETURN_QUIT ;
 int annotate_error_begin () ;
 TYPE_1__ current_target ;
 int fprintf_unfiltered (int ,char*) ;
 int fputs_unfiltered (scalar_t__,int ) ;
 int gdb_flush (int ) ;
 int gdb_stderr ;
 int gdb_stdout ;
 scalar_t__ job_control ;
 scalar_t__ quit_pre_print ;
 int serial_drain_output (struct serial*) ;
 struct serial* serial_fdopen (int) ;
 int serial_un_fdopen (struct serial*) ;
 int target_terminal_ours () ;
 int throw_exception (int ) ;
 int wrap_here (char*) ;

void
quit (void)
{
  struct serial *gdb_stdout_serial = serial_fdopen (1);

  target_terminal_ours ();







  wrap_here ((char *) 0);


  gdb_flush (gdb_stdout);
  gdb_flush (gdb_stderr);


  serial_drain_output (gdb_stdout_serial);
  serial_un_fdopen (gdb_stdout_serial);

  annotate_error_begin ();


  if (quit_pre_print)
    fputs_unfiltered (quit_pre_print, gdb_stderr);






  if (job_control


      || current_target.to_terminal_ours == ((void*)0))
    fprintf_unfiltered (gdb_stderr, "Quit\n");
  else
    fprintf_unfiltered (gdb_stderr,
   "Quit (expect signal SIGINT when the program is resumed)\n");

  throw_exception (RETURN_QUIT);
}
