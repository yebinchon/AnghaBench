#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pthread {int dummy; } ;
typedef  TYPE_1__* pthread_barrier_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ b_waiters; scalar_t__ b_count; scalar_t__ b_cycle; scalar_t__ b_refcount; int /*<<< orphan*/  b_lock; int /*<<< orphan*/  b_cv; scalar_t__ b_destroying; } ;

/* Variables and functions */
 int EINVAL ; 
 int PTHREAD_BARRIER_SERIAL_THREAD ; 
 TYPE_1__* THR_PSHARED_PTR ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 struct pthread* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(pthread_barrier_t *barrier)
{
	struct pthread *curthread;
	pthread_barrier_t bar;
	int64_t cycle;
	int ret;

	if (barrier == NULL || *barrier == NULL)
		return (EINVAL);

	if (*barrier == THR_PSHARED_PTR) {
		bar = FUNC2(barrier, 0);
		if (bar == NULL)
			return (EINVAL);
	} else {
		bar = *barrier;
	}
	curthread = FUNC3();
	FUNC0(curthread, &bar->b_lock);
	if (++bar->b_waiters == bar->b_count) {
		/* Current thread is lastest thread */
		bar->b_waiters = 0;
		bar->b_cycle++;
		FUNC4(&bar->b_cv);
		FUNC1(curthread, &bar->b_lock);
		ret = PTHREAD_BARRIER_SERIAL_THREAD;
	} else {
		cycle = bar->b_cycle;
		bar->b_refcount++;
		do {
			FUNC5(&bar->b_cv, &bar->b_lock, NULL, 0);
			FUNC0(curthread, &bar->b_lock);
			/* test cycle to avoid bogus wakeup */
		} while (cycle == bar->b_cycle);
		if (--bar->b_refcount == 0 && bar->b_destroying)
			FUNC4(&bar->b_cv);
		FUNC1(curthread, &bar->b_lock);
		ret = 0;
	}
	return (ret);
}