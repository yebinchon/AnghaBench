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
struct thread {int /*<<< orphan*/  td_pcb; } ;
struct TYPE_2__ {int /*<<< orphan*/  td_pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int PCB_FPUINITDONE ; 
 int PCB_USERFPUINITDONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct thread* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(struct thread *td)
{

	FUNC0(FUNC1(td->td_pcb), ("fpstate_drop: kernel-owned fpu"));
	FUNC4();
	if (FUNC2(fpcurthread) == td)
		FUNC6();
	/*
	 * XXX force a full drop of the fpu.  The above only drops it if we
	 * owned it.
	 *
	 * XXX I don't much like fpugetuserregs()'s semantics of doing a full
	 * drop.  Dropping only to the pcb matches fnsave's behaviour.
	 * We only need to drop to !PCB_INITDONE in sendsig().  But
	 * sendsig() is the only caller of fpugetuserregs()... perhaps we just
	 * have too many layers.
	 */
	FUNC3(curthread->td_pcb,
	    PCB_FPUINITDONE | PCB_USERFPUINITDONE);
	FUNC5();
}