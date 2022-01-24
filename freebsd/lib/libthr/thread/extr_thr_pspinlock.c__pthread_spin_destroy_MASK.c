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
typedef  int /*<<< orphan*/ * pthread_spinlock_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/ * THR_PSHARED_PTR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(pthread_spinlock_t *lock)
{
	void *l;
	int ret;

	if (lock == NULL || *lock == NULL) {
		ret = EINVAL;
	} else if (*lock == THR_PSHARED_PTR) {
		l = FUNC1(lock, 0);
		if (l != NULL)
			FUNC0(l);
		ret = 0;
	} else {
		FUNC2(*lock);
		*lock = NULL;
		ret = 0;
	}
	return (ret);
}