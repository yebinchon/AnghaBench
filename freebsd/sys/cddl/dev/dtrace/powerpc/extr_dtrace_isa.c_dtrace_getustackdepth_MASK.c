#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct trapframe {uintptr_t srr0; uintptr_t* fixreg; } ;
typedef  int /*<<< orphan*/  proc_t ;
struct TYPE_2__ {struct trapframe* td_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_DTRACE_ENTRY ; 
 int /*<<< orphan*/  CPU_DTRACE_FAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SV_ILP32 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * curproc ; 
 TYPE_1__* curthread ; 
 uintptr_t FUNC2 (void*) ; 
 uintptr_t FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,uintptr_t,uintptr_t) ; 

int
FUNC5(void)
{
	proc_t *p = curproc;
	struct trapframe *tf;
	uintptr_t pc, sp;
	int n = 0;

	if (p == NULL || (tf = curthread->td_frame) == NULL)
		return (0);

	if (FUNC0(CPU_DTRACE_FAULT))
		return (-1);

	pc = tf->srr0;
	sp = tf->fixreg[1];

	if (FUNC0(CPU_DTRACE_ENTRY)) {
		/* 
		 * In an entry probe.  The frame pointer has not yet been
		 * pushed (that happens in the function prologue).  The
		 * best approach is to add the current pc as a missing top
		 * of stack and back the pc up to the caller, which is stored
		 * at the current stack pointer address since the call 
		 * instruction puts it there right before the branch.
		 */

		if (FUNC1(p, SV_ILP32)) {
			pc = FUNC2((void *) sp);
		}
		else
			pc = FUNC3((void *) sp);
		n++;
	}

	n += FUNC4(NULL, 0, pc, sp);

	return (n);
}