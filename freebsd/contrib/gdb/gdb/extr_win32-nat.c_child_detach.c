
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwProcessId; } ;


 int DBG_CONTINUE ;
 int DebugActiveProcessStop (int ) ;
 int DebugSetProcessKillOnExit (int ) ;
 int FALSE ;
 char* GetLastError () ;
 int child_continue (int ,int) ;
 int child_ops ;
 TYPE_1__ current_event ;
 int delete_command (int *,int ) ;
 int error (char*,int ,char*) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 char* get_exec_file (int ) ;
 scalar_t__ has_detach_ability () ;
 int inferior_ptid ;
 int null_ptid ;
 int printf_unfiltered (char*,char*,int ) ;
 int unpush_target (int *) ;

__attribute__((used)) static void
child_detach (char *args, int from_tty)
{
  int detached = 1;

  if (has_detach_ability ())
    {
      delete_command (((void*)0), 0);
      child_continue (DBG_CONTINUE, -1);
      if (!DebugActiveProcessStop (current_event.dwProcessId))
 {
   error ("Can't detach process %lu (error %lu)",
   current_event.dwProcessId, GetLastError ());
   detached = 0;
 }
      DebugSetProcessKillOnExit (FALSE);
    }
  if (detached && from_tty)
    {
      char *exec_file = get_exec_file (0);
      if (exec_file == 0)
 exec_file = "";
      printf_unfiltered ("Detaching from program: %s, Pid %lu\n", exec_file,
    current_event.dwProcessId);
      gdb_flush (gdb_stdout);
    }
  inferior_ptid = null_ptid;
  unpush_target (&child_ops);
}
