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
struct xstate_hdr {int /*<<< orphan*/  xstate_bv; } ;
struct trapframe {int dummy; } ;
struct TYPE_2__ {scalar_t__ md_stack_base; } ;
struct thread {TYPE_1__ td_md; struct trapframe* td_frame; struct pcb* td_pcb; } ;
struct pcb {scalar_t__ pcb_save; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xstate_hdr*,int) ; 
 struct pcb* FUNC1 (struct thread*) ; 
 scalar_t__ FUNC2 (struct pcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 scalar_t__ use_xsave ; 
 int /*<<< orphan*/  xsave_mask ; 

void
FUNC4(struct thread *td)
{
	struct pcb *pcb;
	struct xstate_hdr *xhdr;

	FUNC3(td);
	td->td_pcb = pcb = FUNC1(td);
	td->td_frame = (struct trapframe *)td->td_md.md_stack_base - 1;
	pcb->pcb_save = FUNC2(pcb);
	if (use_xsave) {
		xhdr = (struct xstate_hdr *)(pcb->pcb_save + 1);
		FUNC0(xhdr, sizeof(*xhdr));
		xhdr->xstate_bv = xsave_mask;
	}
}