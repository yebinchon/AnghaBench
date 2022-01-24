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
struct thread {int /*<<< orphan*/  td_tid; struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct linux_emuldata {int* child_set_tid; int /*<<< orphan*/  em_tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 struct linux_emuldata* FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  schedtail ; 

void
FUNC5(struct thread *td)
{
	struct linux_emuldata *em;
	struct proc *p;
	int error = 0;
	int *child_set_tid;

	p = td->td_proc;

	em = FUNC4(td);
	FUNC0(em != NULL, ("linux_schedtail: thread emuldata not found.\n"));
	child_set_tid = em->child_set_tid;

	if (child_set_tid != NULL) {
		error = FUNC3(&em->em_tid, child_set_tid,
		    sizeof(em->em_tid));
		FUNC2(schedtail, "thread(%d) %p stored %d error %d",
		    td->td_tid, child_set_tid, em->em_tid, error);
	} else
		FUNC1(schedtail, "thread(%d)", em->em_tid);
}