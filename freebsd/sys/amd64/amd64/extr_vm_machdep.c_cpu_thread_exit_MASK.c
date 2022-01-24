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
struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_flags; } ;

/* Variables and functions */
 int PCB_DBREGS ; 
 struct thread* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcb*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(struct thread *td)
{
	struct pcb *pcb;

	FUNC2();
	if (td == FUNC0(fpcurthread))
		FUNC4();
	FUNC3();

	pcb = td->td_pcb;

	/* Disable any hardware breakpoints. */
	if (pcb->pcb_flags & PCB_DBREGS) {
		FUNC5();
		FUNC1(pcb, PCB_DBREGS);
	}
}