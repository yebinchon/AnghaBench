
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_handle {int flags; } ;
typedef int pid_t ;


 scalar_t__ EBUSY ;
 int EINVAL ;
 scalar_t__ ESRCH ;
 int PATTACH_RDONLY ;
 int PRELEASE_HANG ;
 int PRELEASE_KILL ;
 int PT_DETACH ;
 int SIGCONT ;
 int SIGKILL ;
 int SIGSTOP ;
 int WUNTRACED ;
 scalar_t__ errno ;
 int kill (int ,int ) ;
 int proc_free (struct proc_handle*) ;
 int proc_getpid (struct proc_handle*) ;
 scalar_t__ ptrace (int ,int ,int ,int ) ;
 int waitpid (int ,int*,int ) ;

int
proc_detach(struct proc_handle *phdl, int reason)
{
 int status;
 pid_t pid;

 if (phdl == ((void*)0))
  return (EINVAL);
 if (reason == PRELEASE_HANG)
  return (EINVAL);
 if (reason == PRELEASE_KILL) {
  kill(proc_getpid(phdl), SIGKILL);
  goto free;
 }
 if ((phdl->flags & PATTACH_RDONLY) != 0)
  goto free;
 pid = proc_getpid(phdl);
 if (ptrace(PT_DETACH, pid, 0, 0) != 0 && errno == ESRCH)
  goto free;
 if (errno == EBUSY) {
  kill(pid, SIGSTOP);
  waitpid(pid, &status, WUNTRACED);
  ptrace(PT_DETACH, pid, 0, 0);
  kill(pid, SIGCONT);
 }
free:
 proc_free(phdl);
 return (0);
}
