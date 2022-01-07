
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int uint16_t ;
struct trapframe {uintptr_t tf_eip; uintptr_t tf_ebp; uintptr_t tf_esp; } ;
struct TYPE_5__ {scalar_t__ p_pid; } ;
typedef TYPE_1__ proc_t ;
struct TYPE_7__ {int cpuc_dtrace_flags; } ;
struct TYPE_6__ {struct trapframe* td_frame; } ;


 int ASSERT (int) ;
 int CPU_DTRACE_ENTRY ;
 int volatile CPU_DTRACE_FAULT ;
 scalar_t__ DTRACE_CPUFLAG_ISSET (int ) ;
 TYPE_4__* cpu_core ;
 size_t curcpu ;
 TYPE_1__* curproc ;
 TYPE_2__* curthread ;
 uintptr_t dtrace_fuword32 (void*) ;
 int dtrace_getustack_common (void**,int,uintptr_t,uintptr_t) ;

void
dtrace_getupcstack(uint64_t *pcstack, int pcstack_limit)
{
 proc_t *p = curproc;
 struct trapframe *tf;
 uintptr_t pc, sp, fp;
 volatile uint16_t *flags =
     (volatile uint16_t *)&cpu_core[curcpu].cpuc_dtrace_flags;
 int n;

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

 pc = tf->tf_eip;
 fp = tf->tf_ebp;
 sp = tf->tf_esp;

 if (DTRACE_CPUFLAG_ISSET(CPU_DTRACE_ENTRY)) {
  *pcstack++ = (uint64_t)pc;
  pcstack_limit--;
  if (pcstack_limit <= 0)
   return;

  pc = dtrace_fuword32((void *) sp);
 }

 n = dtrace_getustack_common(pcstack, pcstack_limit, pc, sp);
 ASSERT(n >= 0);
 ASSERT(n <= pcstack_limit);

 pcstack += n;
 pcstack_limit -= n;

zero:
 while (pcstack_limit-- > 0)
  *pcstack++ = 0;
}
