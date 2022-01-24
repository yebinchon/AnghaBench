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
struct TYPE_2__ {scalar_t__ suspend; int stacksize_attr; scalar_t__ stackaddr_attr; } ;
struct pthread {char* unwind_stackend; int /*<<< orphan*/  arg; int /*<<< orphan*/  (* start_routine ) (int /*<<< orphan*/ ) ;TYPE_1__ attr; scalar_t__ force_exit; int /*<<< orphan*/  sigmask; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PTHREAD_CANCELED ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 scalar_t__ THR_CREATE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct pthread *curthread)
{
	sigset_t set;

	if (curthread->attr.suspend == THR_CREATE_SUSPENDED)
		set = curthread->sigmask;

	/*
	 * This is used as a serialization point to allow parent
	 * to report 'new thread' event to debugger or tweak new thread's
	 * attributes before the new thread does real-world work.
	 */
	FUNC1(curthread);
	FUNC2(curthread);

	if (curthread->force_exit)
		FUNC4(PTHREAD_CANCELED);

	if (curthread->attr.suspend == THR_CREATE_SUSPENDED) {
#if 0
		/* Done in THR_UNLOCK() */
		_thr_ast(curthread);
#endif

		/*
		 * Parent thread have stored signal mask for us,
		 * we should restore it now.
		 */
		FUNC3(SIG_SETMASK, &set, NULL);
	}

#ifdef _PTHREAD_FORCED_UNWIND
	curthread->unwind_stackend = (char *)curthread->attr.stackaddr_attr +
		curthread->attr.stacksize_attr;
#endif

	/* Run the current thread's start routine with argument: */
	FUNC4(curthread->start_routine(curthread->arg));

	/* This point should never be reached. */
	FUNC0("Thread has resumed after exit");
}