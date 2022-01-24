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
struct pcb {int /*<<< orphan*/  pcb_pagedir; int /*<<< orphan*/  pcb_dacr; int /*<<< orphan*/  pcb_l1vec; int /*<<< orphan*/ * pcb_pl1vec; } ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_2__ {struct pcb* td_pcb; } ;

/* Variables and functions */
 scalar_t__ KERNBASE ; 
 scalar_t__ PAGE_SIZE ; 
 struct pcb* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct pcb* curpcb ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__ thread0 ; 
 scalar_t__ vector_page ; 

void
FUNC13(pmap_t pmap)
{
	struct pcb *pcb;

	FUNC9(pmap);
	FUNC3();
	FUNC12(pmap);
	FUNC1();
	if (vector_page < KERNBASE) {
		struct pcb *curpcb = FUNC0(curpcb);
		pcb = thread0.td_pcb;
		if (FUNC10(pmap)) {
			/*
 			 * Frob the L1 entry corresponding to the vector
			 * page so that it contains the kernel pmap's domain
			 * number. This will ensure pmap_remove() does not
			 * pull the current vector page out from under us.
			 */
			FUNC5();
			*pcb->pcb_pl1vec = pcb->pcb_l1vec;
			FUNC2(pcb->pcb_dacr);
			FUNC4(pcb->pcb_pagedir);
			FUNC6();
		}
		FUNC11(pmap, vector_page, vector_page + PAGE_SIZE);
		/*
		 * Make sure cpu_switch(), et al, DTRT. This is safe to do
		 * since this process has no remaining mappings of its own.
		 */
		curpcb->pcb_pl1vec = pcb->pcb_pl1vec;
		curpcb->pcb_l1vec = pcb->pcb_l1vec;
		curpcb->pcb_dacr = pcb->pcb_dacr;
		curpcb->pcb_pagedir = pcb->pcb_pagedir;

	}
	FUNC8(pmap);

	FUNC7("pmap_release()\n");
}