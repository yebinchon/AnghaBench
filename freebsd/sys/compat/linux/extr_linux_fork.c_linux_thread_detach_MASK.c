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
struct thread {int dummy; } ;
struct linux_sys_futex_args {int* uaddr; int val; scalar_t__ val3; int /*<<< orphan*/ * uaddr2; int /*<<< orphan*/ * timeout; int /*<<< orphan*/  op; } ;
struct linux_emuldata {int* child_clear_tid; int /*<<< orphan*/  em_tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  LINUX_FUTEX_WAKE ; 
 struct linux_emuldata* FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,char*) ; 
 int FUNC5 (struct thread*,struct linux_sys_futex_args*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,struct linux_emuldata*) ; 
 int FUNC7 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_detach ; 

void
FUNC8(struct thread *td)
{
	struct linux_sys_futex_args cup;
	struct linux_emuldata *em;
	int *child_clear_tid;
	int error;

	em = FUNC3(td);
	FUNC0(em != NULL, ("thread_detach: emuldata not found.\n"));

	FUNC1(thread_detach, "thread(%d)", em->em_tid);

	FUNC6(td, em);

	child_clear_tid = em->child_clear_tid;

	if (child_clear_tid != NULL) {

		FUNC2(thread_detach, "thread(%d) %p",
		    em->em_tid, child_clear_tid);

		error = FUNC7(child_clear_tid, 0);
		if (error != 0)
			return;

		cup.uaddr = child_clear_tid;
		cup.op = LINUX_FUTEX_WAKE;
		cup.val = 1;		/* wake one */
		cup.timeout = NULL;
		cup.uaddr2 = NULL;
		cup.val3 = 0;
		error = FUNC5(td, &cup);
		/*
		 * this cannot happen at the moment and if this happens it
		 * probably means there is a user space bug
		 */
		if (error != 0)
			FUNC4(td, "futex stuff in thread_detach failed.");
	}
}