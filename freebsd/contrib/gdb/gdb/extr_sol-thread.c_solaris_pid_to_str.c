
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int GET_LWP (int ) ;
 int GET_THREAD (int ) ;
 int PIDGET (int ) ;
 scalar_t__ is_thread (int ) ;
 char* procfs_pid_to_str (int ) ;
 int procfs_suppress_run ;
 int sprintf (char*,char*,int,...) ;
 int thread_to_lwp (int ,int) ;

char *
solaris_pid_to_str (ptid_t ptid)
{
  static char buf[100];


  if (!procfs_suppress_run)
    return procfs_pid_to_str (ptid);

  if (is_thread (ptid))
    {
      ptid_t lwp;

      lwp = thread_to_lwp (ptid, -2);

      if (PIDGET (lwp) == -1)
 sprintf (buf, "Thread %ld (defunct)", GET_THREAD (ptid));
      else if (PIDGET (lwp) != -2)
 sprintf (buf, "Thread %ld (LWP %ld)", GET_THREAD (ptid), GET_LWP (lwp));
      else
 sprintf (buf, "Thread %ld        ", GET_THREAD (ptid));
    }
  else if (GET_LWP (ptid) != 0)
    sprintf (buf, "LWP    %ld        ", GET_LWP (ptid));
  else
    sprintf (buf, "process %d    ", PIDGET (ptid));

  return buf;
}
