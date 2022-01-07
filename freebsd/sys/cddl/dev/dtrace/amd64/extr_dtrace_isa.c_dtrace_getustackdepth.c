
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {uintptr_t tf_rip; uintptr_t tf_rbp; uintptr_t tf_rsp; } ;
typedef int proc_t ;
struct TYPE_2__ {struct trapframe* td_frame; } ;


 int CPU_DTRACE_ENTRY ;
 int CPU_DTRACE_FAULT ;
 scalar_t__ DTRACE_CPUFLAG_ISSET (int ) ;
 int * curproc ;
 TYPE_1__* curthread ;
 uintptr_t dtrace_fuword64 (void*) ;
 scalar_t__ dtrace_getustack_common (int *,int ,uintptr_t,uintptr_t) ;

int
dtrace_getustackdepth(void)
{
 proc_t *p = curproc;
 struct trapframe *tf;
 uintptr_t pc, fp, sp;
 int n = 0;

 if (p == ((void*)0) || (tf = curthread->td_frame) == ((void*)0))
  return (0);

 if (DTRACE_CPUFLAG_ISSET(CPU_DTRACE_FAULT))
  return (-1);

 pc = tf->tf_rip;
 fp = tf->tf_rbp;
 sp = tf->tf_rsp;

 if (DTRACE_CPUFLAG_ISSET(CPU_DTRACE_ENTRY)) {
  pc = dtrace_fuword64((void *) sp);
  n++;
 }

 n += dtrace_getustack_common(((void*)0), 0, pc, fp);

 return (n);
}
