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
typedef  int u_int ;
struct thread {struct pcb* td_pcb; TYPE_1__* td_proc; } ;
struct pcb {int pcb_dacr; scalar_t__ pcb_pagedir; int /*<<< orphan*/  pcb_l1vec; int /*<<< orphan*/ * pcb_pl1vec; } ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_2__ {int /*<<< orphan*/  p_vmspace; } ;

/* Variables and functions */
 int L1_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct pcb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct thread *td)
{
	pmap_t pm;
	struct pcb *pcb;

	pm = FUNC5(td->td_proc->p_vmspace);
	pcb = td->td_pcb;

	FUNC2();
	FUNC4(pm, pcb);

	if (td == curthread) {
		u_int cur_dacr, cur_ttb;

		__asm __volatile("mrc p15, 0, %0, c2, c0, 0" : "=r"(cur_ttb));
		__asm __volatile("mrc p15, 0, %0, c3, c0, 0" : "=r"(cur_dacr));

		cur_ttb &= ~(L1_TABLE_SIZE - 1);

		if (cur_ttb == (u_int)pcb->pcb_pagedir &&
		    cur_dacr == pcb->pcb_dacr) {
			/*
			 * No need to switch address spaces.
			 */
			FUNC3();
			return;
		}


		/*
		 * We MUST, I repeat, MUST fix up the L1 entry corresponding
		 * to 'vector_page' in the incoming L1 table before switching
		 * to it otherwise subsequent interrupts/exceptions (including
		 * domain faults!) will jump into hyperspace.
		 */
		if (pcb->pcb_pl1vec) {

			*pcb->pcb_pl1vec = pcb->pcb_l1vec;
			/*
			 * Don't need to PTE_SYNC() at this point since
			 * cpu_setttb() is about to flush both the cache
			 * and the TLB.
			 */
		}

		FUNC0(pcb->pcb_dacr);
		FUNC1(pcb->pcb_pagedir);
	}
	FUNC3();
}