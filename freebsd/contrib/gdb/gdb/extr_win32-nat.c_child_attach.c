
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int CW_CYGWIN_PID_TO_WINPID ;
 scalar_t__ DebugActiveProcess (scalar_t__) ;
 int DebugSetProcessKillOnExit (int ) ;
 int FALSE ;
 int SE_DEBUG_NAME ;
 int TRUE ;
 int attach_flag ;
 scalar_t__ cygwin_internal (int ,scalar_t__) ;
 int do_initial_child_stuff (scalar_t__) ;
 int error (char*) ;
 int error_no_arg (char*) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 scalar_t__ get_exec_file (int ) ;
 scalar_t__ has_detach_ability () ;
 int pid_to_ptid (scalar_t__) ;
 int printf_unfiltered (char*,...) ;
 scalar_t__ saw_create ;
 scalar_t__ set_process_privilege (int ,int ) ;
 scalar_t__ strtoul (char*,int ,int ) ;
 int target_pid_to_str (int ) ;
 int target_terminal_ours () ;

__attribute__((used)) static void
child_attach (char *args, int from_tty)
{
  BOOL ok;
  DWORD pid;

  if (!args)
    error_no_arg ("process-id to attach");

  if (set_process_privilege (SE_DEBUG_NAME, TRUE) < 0)
    {
      printf_unfiltered ("Warning: Failed to get SE_DEBUG_NAME privilege\n");
      printf_unfiltered ("This can cause attach to fail on Windows NT/2K/XP\n");
    }

  pid = strtoul (args, 0, 0);

  ok = DebugActiveProcess (pid);
  saw_create = 0;

  if (!ok)
    {

      pid = cygwin_internal (CW_CYGWIN_PID_TO_WINPID, pid);

      if (pid > 0)
 ok = DebugActiveProcess (pid);

      if (!ok)
 error ("Can't attach to process.");
    }

  if (has_detach_ability ())
    DebugSetProcessKillOnExit (FALSE);

  attach_flag = 1;

  if (from_tty)
    {
      char *exec_file = (char *) get_exec_file (0);

      if (exec_file)
 printf_unfiltered ("Attaching to program `%s', %s\n", exec_file,
      target_pid_to_str (pid_to_ptid (pid)));
      else
 printf_unfiltered ("Attaching to %s\n",
      target_pid_to_str (pid_to_ptid (pid)));

      gdb_flush (gdb_stdout);
    }

  do_initial_child_stuff (pid);
  target_terminal_ours ();
}
