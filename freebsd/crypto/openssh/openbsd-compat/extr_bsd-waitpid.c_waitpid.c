
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union wait {scalar_t__ w_status; } ;
typedef int pid_t ;


 int EINVAL ;
 int errno ;
 int wait4 (int,union wait*,int,int *) ;

pid_t
waitpid(int pid, int *stat_loc, int options)
{
 union wait statusp;
 pid_t wait_pid;

 if (pid <= 0) {
  if (pid != -1) {
   errno = EINVAL;
   return (-1);
  }

  pid = 0;
 }
 wait_pid = wait4(pid, &statusp, options, ((void*)0));
 if (stat_loc)
  *stat_loc = (int) statusp.w_status;

 return (wait_pid);
}
