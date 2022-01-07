
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_handle {scalar_t__ status; int wstat; } ;
typedef int caddr_t ;


 scalar_t__ PS_RUN ;
 scalar_t__ PS_STOP ;
 int PT_CONTINUE ;
 int SIGTRAP ;
 int WSTOPSIG (int ) ;
 int proc_getpid (struct proc_handle*) ;
 scalar_t__ ptrace (int ,int ,int ,int) ;

int
proc_continue(struct proc_handle *phdl)
{
 int pending;

 if (phdl == ((void*)0))
  return (-1);

 if (phdl->status == PS_STOP && WSTOPSIG(phdl->wstat) != SIGTRAP)
  pending = WSTOPSIG(phdl->wstat);
 else
  pending = 0;
 if (ptrace(PT_CONTINUE, proc_getpid(phdl), (caddr_t)(uintptr_t)1,
     pending) != 0)
  return (-1);

 phdl->status = PS_RUN;

 return (0);
}
