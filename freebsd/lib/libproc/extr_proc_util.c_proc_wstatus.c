
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_handle {int status; int wstat; } ;


 int DPRINTF (char*) ;
 scalar_t__ EINTR ;
 int PS_STOP ;
 int PS_UNDEAD ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 scalar_t__ WIFSTOPPED (int) ;
 int WUNTRACED ;
 scalar_t__ errno ;
 int proc_getpid (struct proc_handle*) ;
 scalar_t__ waitpid (int ,int*,int ) ;

int
proc_wstatus(struct proc_handle *phdl)
{
 int status;

 if (phdl == ((void*)0))
  return (-1);
 if (waitpid(proc_getpid(phdl), &status, WUNTRACED) < 0) {
  if (errno != EINTR)
   DPRINTF("waitpid");
  return (-1);
 }
 if (WIFSTOPPED(status))
  phdl->status = PS_STOP;
 if (WIFEXITED(status) || WIFSIGNALED(status))
  phdl->status = PS_UNDEAD;
 phdl->wstat = status;

 return (phdl->status);
}
