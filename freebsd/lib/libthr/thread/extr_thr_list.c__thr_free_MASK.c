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
struct pthread {int /*<<< orphan*/ * tcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct pthread*) ; 
 scalar_t__ MAX_CACHED_THREADS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ free_thread_count ; 
 int /*<<< orphan*/  free_thread_lock ; 
 int /*<<< orphan*/  free_threadq ; 
 int /*<<< orphan*/  tcb_lock ; 
 int /*<<< orphan*/  FUNC6 (struct pthread*,struct pthread*) ; 
 int /*<<< orphan*/  tle ; 
 int /*<<< orphan*/  total_threads ; 

void
FUNC7(struct pthread *curthread, struct pthread *thread)
{
	FUNC0("Freeing thread %p\n", thread);

	/*
	 * Always free tcb, as we only know it is part of RTLD TLS
	 * block, but don't know its detail and can not assume how
	 * it works, so better to avoid caching it here.
	 */
	if (curthread != NULL) {
		FUNC2(curthread, &tcb_lock);
		FUNC4(thread->tcb);
		FUNC3(curthread, &tcb_lock);
	} else {
		FUNC4(thread->tcb);
	}
	thread->tcb = NULL;
	if ((curthread == NULL) || (free_thread_count >= MAX_CACHED_THREADS)) {
		FUNC6(curthread, thread);
		FUNC5(&total_threads, -1);
	} else {
		/*
		 * Add the thread to the free thread list, this also avoids
		 * pthread id is reused too quickly, may help some buggy apps.
		 */
		FUNC2(curthread, &free_thread_lock);
		FUNC1(&free_threadq, thread, tle);
		free_thread_count++;
		FUNC3(curthread, &free_thread_lock);
	}
}