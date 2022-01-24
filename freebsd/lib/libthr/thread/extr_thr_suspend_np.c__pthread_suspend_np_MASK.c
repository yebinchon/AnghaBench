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
struct pthread {int dummy; } ;
typedef  struct pthread* pthread_t ;

/* Variables and functions */
 int EDEADLK ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,struct pthread*) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,struct pthread*) ; 
 struct pthread* FUNC2 () ; 
 int FUNC3 (struct pthread*,struct pthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pthread*,struct pthread*) ; 
 int /*<<< orphan*/  FUNC5 (struct pthread*,struct pthread*,int) ; 

int
FUNC6(pthread_t thread)
{
	struct pthread *curthread = FUNC2();
	int ret;

	/* Suspending the current thread doesn't make sense. */
	if (thread == FUNC2())
		ret = EDEADLK;

	/* Add a reference to the thread: */
	else if ((ret = FUNC3(curthread, thread, /*include dead*/0))
	    == 0) {
		/* Lock the threads scheduling queue: */
		FUNC0(curthread, thread);
		FUNC5(curthread, thread, 1);
		/* Unlock the threads scheduling queue: */
		FUNC1(curthread, thread);

		/* Don't forget to remove the reference: */
		FUNC4(curthread, thread);
	}
	return (ret);
}