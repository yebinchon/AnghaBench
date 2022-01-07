
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int uint16_t ;
struct trapframe {scalar_t__ pc; scalar_t__ ra; scalar_t__ sp; } ;
typedef void* register_t ;
struct TYPE_5__ {scalar_t__ p_pid; } ;
typedef TYPE_1__ proc_t ;
struct TYPE_7__ {int cpuc_dtrace_flags; } ;
struct TYPE_6__ {struct trapframe* td_frame; } ;


 int volatile CPU_DTRACE_FAULT ;
 TYPE_4__* cpu_core ;
 size_t curcpu ;
 TYPE_1__* curproc ;
 TYPE_2__* curthread ;
 scalar_t__ dtrace_next_uframe (void**,void**,void**) ;

void
dtrace_getupcstack(uint64_t *pcstack, int pcstack_limit)
{
 proc_t *p = curproc;
 struct trapframe *tf;
 register_t sp, ra, pc;
 volatile uint16_t *flags =
     (volatile uint16_t *)&cpu_core[curcpu].cpuc_dtrace_flags;

 if (*flags & CPU_DTRACE_FAULT)
  return;

 if (pcstack_limit <= 0)
  return;




 if (p == ((void*)0) || (tf = curthread->td_frame) == ((void*)0))
  goto zero;

 *pcstack++ = (uint64_t)p->p_pid;
 pcstack_limit--;

 if (pcstack_limit <= 0)
  return;

 pc = (uint64_t)tf->pc;
 sp = (uint64_t)tf->sp;
 ra = (uint64_t)tf->ra;
 *pcstack++ = (uint64_t)tf->pc;




 while (1) {
  if (dtrace_next_uframe(&pc, &sp, &ra) < 0)
   break;

  *pcstack++ = pc;
  pcstack_limit--;

  if (pcstack_limit <= 0)
   break;
 }

zero:
 while (pcstack_limit-- > 0)
  *pcstack++ = 0;
}
