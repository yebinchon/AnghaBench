
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {uintptr_t srr0; uintptr_t* fixreg; } ;
typedef int proc_t ;
struct TYPE_2__ {struct trapframe* td_frame; } ;


 int CPU_DTRACE_ENTRY ;
 int CPU_DTRACE_FAULT ;
 scalar_t__ DTRACE_CPUFLAG_ISSET (int ) ;
 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (int *,int ) ;
 int * curproc ;
 TYPE_1__* curthread ;
 uintptr_t dtrace_fuword32 (void*) ;
 uintptr_t dtrace_fuword64 (void*) ;
 scalar_t__ dtrace_getustack_common (int *,int ,uintptr_t,uintptr_t) ;

int
dtrace_getustackdepth(void)
{
 proc_t *p = curproc;
 struct trapframe *tf;
 uintptr_t pc, sp;
 int n = 0;

 if (p == ((void*)0) || (tf = curthread->td_frame) == ((void*)0))
  return (0);

 if (DTRACE_CPUFLAG_ISSET(CPU_DTRACE_FAULT))
  return (-1);

 pc = tf->srr0;
 sp = tf->fixreg[1];

 if (DTRACE_CPUFLAG_ISSET(CPU_DTRACE_ENTRY)) {
  if (SV_PROC_FLAG(p, SV_ILP32)) {
   pc = dtrace_fuword32((void *) sp);
  }
  else
   pc = dtrace_fuword64((void *) sp);
  n++;
 }

 n += dtrace_getustack_common(((void*)0), 0, pc, sp);

 return (n);
}
