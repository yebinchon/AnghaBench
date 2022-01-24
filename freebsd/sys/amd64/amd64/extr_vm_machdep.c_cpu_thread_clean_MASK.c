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
typedef  scalar_t__ vm_offset_t ;
struct thread {struct pcb* td_pcb; } ;
struct pcb {int /*<<< orphan*/ * pcb_tssp; } ;

/* Variables and functions */
 scalar_t__ IOPAGES ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

void
FUNC3(struct thread *td)
{
	struct pcb *pcb;

	pcb = td->td_pcb;

	/*
	 * Clean TSS/iomap
	 */
	if (pcb->pcb_tssp != NULL) {
		FUNC2((vm_offset_t)pcb->pcb_tssp,
		    (vm_offset_t)pcb->pcb_tssp + FUNC0(IOPAGES + 1));
		FUNC1((vm_offset_t)pcb->pcb_tssp, FUNC0(IOPAGES + 1));
		pcb->pcb_tssp = NULL;
	}
}