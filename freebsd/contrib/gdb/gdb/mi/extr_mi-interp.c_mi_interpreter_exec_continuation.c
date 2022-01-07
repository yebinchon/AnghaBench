
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct continuation_arg {int dummy; } ;


 int ALL_CLEANUPS ;
 int add_continuation (void (*) (struct continuation_arg*),int *) ;
 int bpstat_do_actions (int *) ;
 int do_exec_cleanups (int ) ;
 int fputs_unfiltered (char*,int ) ;
 int gdb_flush (int ) ;
 int mi_out_put (int ,int ) ;
 int raw_stdout ;
 int stop_bpstat ;
 scalar_t__ target_can_async_p () ;
 int target_executing ;
 int uiout ;

__attribute__((used)) static void
mi_interpreter_exec_continuation (struct continuation_arg *arg)
{
  bpstat_do_actions (&stop_bpstat);
  if (!target_executing)
    {
      fputs_unfiltered ("*stopped", raw_stdout);
      mi_out_put (uiout, raw_stdout);
      fputs_unfiltered ("\n", raw_stdout);
      fputs_unfiltered ("(gdb) \n", raw_stdout);
      gdb_flush (raw_stdout);
      do_exec_cleanups (ALL_CLEANUPS);
    }
  else if (target_can_async_p ())
    {
      add_continuation (mi_interpreter_exec_continuation, ((void*)0));
    }
}
