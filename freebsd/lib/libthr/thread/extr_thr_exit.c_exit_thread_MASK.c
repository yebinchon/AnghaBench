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
struct pthread {int flags; int /*<<< orphan*/  tid; int /*<<< orphan*/  refcount; int /*<<< orphan*/  force_exit; int /*<<< orphan*/  cycle; int /*<<< orphan*/  state; int /*<<< orphan*/ * specific; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  PS_DEAD ; 
 scalar_t__ FUNC1 (struct pthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TD_DEATH ; 
 int THR_FLAGS_NEED_SUSPEND ; 
 scalar_t__ FUNC2 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*) ; 
 struct pthread* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC8 (struct pthread*,struct pthread*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _thread_active_threads ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(void)
{
	struct pthread *curthread = FUNC4();

	FUNC13(curthread->name);
	curthread->name = NULL;

	/* Check if there is thread specific data: */
	if (curthread->specific != NULL) {
		/* Run the thread-specific data destructors: */
		FUNC10();
	}

	if (!FUNC6())
		FUNC12(0);

	if (FUNC11(&_thread_active_threads, -1) == 1) {
		FUNC12(0);
		/* Never reach! */
	}

	/* Tell malloc that the thread is exiting. */
	FUNC5();

	FUNC3(curthread);
	curthread->state = PS_DEAD;
	if (curthread->flags & THR_FLAGS_NEED_SUSPEND) {
		curthread->cycle++;
		FUNC9(&curthread->cycle, INT_MAX, 0);
	}
	if (!curthread->force_exit && FUNC1(curthread, TD_DEATH))
		FUNC7(curthread);
	/*
	 * Thread was created with initial refcount 1, we drop the
	 * reference count to allow it to be garbage collected.
	 */
	curthread->refcount--;
	FUNC8(curthread, curthread); /* thread lock released */

#if defined(_PTHREADS_INVARIANTS)
	if (THR_IN_CRITICAL(curthread))
		PANIC("thread %p exits with resources held!", curthread);
#endif
	/*
	 * Kernel will do wakeup at the address, so joiner thread
	 * will be resumed if it is sleeping at the address.
	 */
	FUNC14(&curthread->tid);
	FUNC0("thr_exit() returned");
	/* Never reach! */
}