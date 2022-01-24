#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
typedef  int uint16_t ;
struct trapframe {uintptr_t tf_eip; uintptr_t tf_ebp; uintptr_t tf_esp; } ;
struct TYPE_5__ {scalar_t__ p_pid; } ;
typedef  TYPE_1__ proc_t ;
struct TYPE_7__ {int /*<<< orphan*/  cpuc_dtrace_flags; } ;
struct TYPE_6__ {struct trapframe* td_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CPU_DTRACE_ENTRY ; 
 int volatile CPU_DTRACE_FAULT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* cpu_core ; 
 size_t curcpu ; 
 TYPE_1__* curproc ; 
 TYPE_2__* curthread ; 
 uintptr_t FUNC2 (void*) ; 
 int FUNC3 (void**,int,uintptr_t,uintptr_t) ; 

void
FUNC4(uint64_t *pcstack, int pcstack_limit)
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

	/*
	 * If there's no user context we still need to zero the stack.
	 */
	if (p == NULL || (tf = curthread->td_frame) == NULL)
		goto zero;

	*pcstack++ = (uint64_t)p->p_pid;
	pcstack_limit--;

	if (pcstack_limit <= 0)
		return;

	pc = tf->tf_eip;
	fp = tf->tf_ebp;
	sp = tf->tf_esp;

	if (FUNC1(CPU_DTRACE_ENTRY)) {
		/*
		 * In an entry probe.  The frame pointer has not yet been
		 * pushed (that happens in the function prologue).  The
		 * best approach is to add the current pc as a missing top
		 * of stack and back the pc up to the caller, which is stored
		 * at the current stack pointer address since the call 
		 * instruction puts it there right before the branch.
		 */

		*pcstack++ = (uint64_t)pc;
		pcstack_limit--;
		if (pcstack_limit <= 0)
			return;

		pc = FUNC2((void *) sp);
	}

	n = FUNC3(pcstack, pcstack_limit, pc, sp);
	FUNC0(n >= 0);
	FUNC0(n <= pcstack_limit);

	pcstack += n;
	pcstack_limit -= n;

zero:
	while (pcstack_limit-- > 0)
		*pcstack++ = 0;
}