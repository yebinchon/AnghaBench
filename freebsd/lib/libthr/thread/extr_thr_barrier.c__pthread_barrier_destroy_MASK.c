#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pthread {int dummy; } ;
typedef  TYPE_1__* pthread_barrier_t ;
struct TYPE_8__ {int b_destroying; scalar_t__ b_waiters; scalar_t__ b_refcount; int /*<<< orphan*/  b_lock; int /*<<< orphan*/  b_cv; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 TYPE_1__* THR_PSHARED_PTR ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 TYPE_1__* FUNC3 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 struct pthread* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int
FUNC7(pthread_barrier_t *barrier)
{
	pthread_barrier_t bar;
	struct pthread *curthread;
	int pshared;

	if (barrier == NULL || *barrier == NULL)
		return (EINVAL);

	if (*barrier == THR_PSHARED_PTR) {
		bar = FUNC3(barrier, 0);
		if (bar == NULL) {
			*barrier = NULL;
			return (0);
		}
		pshared = 1;
	} else {
		bar = *barrier;
		pshared = 0;
	}
	curthread = FUNC4();
	FUNC0(curthread, &bar->b_lock);
	if (bar->b_destroying) {
		FUNC1(curthread, &bar->b_lock);
		return (EBUSY);
	}
	bar->b_destroying = 1;
	do {
		if (bar->b_waiters > 0) {
			bar->b_destroying = 0;
			FUNC1(curthread, &bar->b_lock);
			return (EBUSY);
		}
		if (bar->b_refcount != 0) {
			FUNC5(&bar->b_cv, &bar->b_lock, NULL, 0);
			FUNC0(curthread, &bar->b_lock);
		} else
			break;
	} while (1);
	bar->b_destroying = 0;
	FUNC1(curthread, &bar->b_lock);

	*barrier = NULL;
	if (pshared)
		FUNC2(barrier);
	else
		FUNC6(bar);
	return (0);
}