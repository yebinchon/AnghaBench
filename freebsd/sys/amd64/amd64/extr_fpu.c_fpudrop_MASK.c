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
struct thread {int /*<<< orphan*/  td_pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  PCB_FPUINITDONE ; 
 struct thread* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(void)
{
	struct thread *td;

	td = FUNC2(fpcurthread);
	FUNC1(td == curthread, ("fpudrop: fpcurthread != curthread"));
	FUNC0(td);
	FUNC3(fpcurthread, NULL);
	FUNC4(td->td_pcb, PCB_FPUINITDONE);
	FUNC5();
}