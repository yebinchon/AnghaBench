
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mi_interp {int targ; int log; int err; int out; } ;


 int INTERP_MI1 ;
 int INTERP_MI2 ;
 int INTERP_MI3 ;
 int add_file_handler (int ,int ,int ) ;
 scalar_t__ async_command_editing_p ;
 int call_readline ;
 int clear_interpreter_hooks () ;
 int command_loop_hook ;
 scalar_t__ current_interp_named_p (int ) ;
 scalar_t__ event_loop_p ;
 int gdb_readline2 ;
 int gdb_setup_readline () ;
 int gdb_stderr ;
 int gdb_stdlog ;
 int gdb_stdout ;
 int gdb_stdtarg ;
 int input_fd ;
 int input_handler ;
 int mi1_command_loop ;
 int mi2_command_loop ;
 int mi3_command_loop ;
 int mi_execute_command_wrapper ;
 int mi_load_progress ;
 int show_load_progress ;
 int stdin_event_handler ;
 scalar_t__ sync_execution ;

__attribute__((used)) static int
mi_interpreter_resume (void *data)
{
  struct mi_interp *mi = data;


  gdb_setup_readline ();

  if (event_loop_p)
    {


      call_readline = gdb_readline2;
      input_handler = mi_execute_command_wrapper;
      add_file_handler (input_fd, stdin_event_handler, 0);
      async_command_editing_p = 0;






      sync_execution = 0;
    }

  gdb_stdout = mi->out;

  gdb_stderr = mi->err;
  gdb_stdlog = mi->log;

  gdb_stdtarg = mi->targ;



  clear_interpreter_hooks ();

  show_load_progress = mi_load_progress;


  if (current_interp_named_p (INTERP_MI1))
    command_loop_hook = mi1_command_loop;
  else if (current_interp_named_p (INTERP_MI2))
    command_loop_hook = mi2_command_loop;
  else if (current_interp_named_p (INTERP_MI3))
    command_loop_hook = mi3_command_loop;
  else
    command_loop_hook = mi2_command_loop;

  return 1;
}
