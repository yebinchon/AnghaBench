#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_int ;
struct pcb {int const pcb_flags; int /*<<< orphan*/  pcb_gsbase; int /*<<< orphan*/  pcb_fsbase; } ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_KGSBASE ; 
 int const PCB_FULL_IRET ; 
 scalar_t__ _ufssel ; 
 scalar_t__ _ugssel ; 
 struct pcb* curpcb ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pcb*,int const) ; 

__attribute__((used)) static void
FUNC7(struct pcb *pcb, const u_int flags)
{
	register_t r;

	if (curpcb == pcb &&
	    (flags & PCB_FULL_IRET) != 0 &&
	    (pcb->pcb_flags & PCB_FULL_IRET) == 0) {
		r = FUNC0();
		if ((pcb->pcb_flags & PCB_FULL_IRET) == 0) {
			if (FUNC4() == _ufssel)
				pcb->pcb_fsbase = FUNC2();
			if (FUNC5() == _ugssel)
				pcb->pcb_gsbase = FUNC3(MSR_KGSBASE);
		}
		FUNC6(pcb, flags);
		FUNC1(r);
	} else {
		FUNC6(pcb, flags);
	}
}