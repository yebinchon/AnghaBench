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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int EDEADLK ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 uintptr_t STACKSIZE ; 
 uintptr_t FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int error ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,uintptr_t) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  threadfunc2 ; 

__attribute__((used)) static void *
FUNC13(void *arg)
{
	pthread_t thread[25];
	pthread_t caller;
	void *val = NULL;
	uintptr_t i;
	int rv;
	pthread_attr_t attr;

	caller = FUNC12();

#ifdef CHECK_STACK_ALIGNMENT
	/*
	 * Check alignment of thread stack, if supported.
	 */
	ATF_REQUIRE(check_stack_alignment());
#endif

	/*
	 * The behavior is undefined, but should error
	 * out, if we try to join the calling thread.
	 */
	rv = FUNC11(caller, NULL);

	/*
	 * The specification recommends EDEADLK.
	 */
	FUNC0(rv != 0);
	FUNC1(rv, EDEADLK);

	FUNC0(FUNC6(&attr) == 0);

	for (i = 0; i < FUNC3(thread); i++) {

		error = true;

		FUNC0(FUNC7(&attr, STACKSIZE * (i + 1)) == 0);

		rv = FUNC8(&thread[i], &attr, threadfunc2, (void *)i);

		FUNC1(rv, 0);

		/*
		 * Check join and exit condition.
		 */
		FUNC2(FUNC11(thread[i], &val));

		FUNC1(error, false);

		FUNC0(val != NULL);
		FUNC0(val == (void *)(i + 1));

		/*
		 * Once the thread has returned, ESRCH should
		 * again follow if we try to join it again.
		 */
		rv = FUNC11(thread[i], NULL);

		FUNC1(rv, ESRCH);

		/*
		 * Try to detach the exited thread.
		 */
		rv = FUNC9(thread[i]);

		FUNC0(rv != 0);
	}

	FUNC0(FUNC5(&attr) == 0);

	FUNC10(NULL);

	return NULL;
}