
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
struct trapframe {scalar_t__ ra; scalar_t__ sp; scalar_t__ pc; } ;
typedef scalar_t__ register_t ;
typedef int proc_t ;
struct TYPE_4__ {int cpuc_dtrace_flags; } ;
struct TYPE_3__ {struct trapframe* td_frame; } ;


 int volatile CPU_DTRACE_FAULT ;
 TYPE_2__* cpu_core ;
 size_t curcpu ;
 int * curproc ;
 TYPE_1__* curthread ;
 scalar_t__ dtrace_next_uframe (scalar_t__*,scalar_t__*,scalar_t__*) ;

int
dtrace_getustackdepth(void)
{
 int n = 0;
 proc_t *p = curproc;
 struct trapframe *tf;
 register_t sp, ra, pc;
 volatile uint16_t *flags =
     (volatile uint16_t *)&cpu_core[curcpu].cpuc_dtrace_flags;

 if (*flags & CPU_DTRACE_FAULT)
  return (0);

 if (p == ((void*)0) || (tf = curthread->td_frame) == ((void*)0))
  return (0);

 pc = (uint64_t)tf->pc;
 sp = (uint64_t)tf->sp;
 ra = (uint64_t)tf->ra;
 n++;




 while (1) {
  if (dtrace_next_uframe(&pc, &sp, &ra) < 0)
   break;
  n++;
 }

 return (n);
}
