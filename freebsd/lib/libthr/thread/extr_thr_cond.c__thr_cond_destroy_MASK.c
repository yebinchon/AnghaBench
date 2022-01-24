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
struct TYPE_2__ {scalar_t__ c_has_waiters; } ;
struct pthread_cond {TYPE_1__ kcond; scalar_t__ __has_user_waiters; } ;
typedef  struct pthread_cond* pthread_cond_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct pthread_cond* THR_COND_DESTROYED ; 
 struct pthread_cond* THR_COND_INITIALIZER ; 
 struct pthread_cond* THR_PSHARED_PTR ; 
 int /*<<< orphan*/  FUNC0 (struct pthread_cond**) ; 
 struct pthread_cond* FUNC1 (struct pthread_cond**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pthread_cond*) ; 

int
FUNC3(pthread_cond_t *cond)
{
	struct pthread_cond *cvp;
	int error;

	error = 0;
	if (*cond == THR_PSHARED_PTR) {
		cvp = FUNC1(cond, 0);
		if (cvp != NULL) {
			if (cvp->kcond.c_has_waiters)
				error = EBUSY;
			else
				FUNC0(cond);
		}
		if (error == 0)
			*cond = THR_COND_DESTROYED;
	} else if ((cvp = *cond) == THR_COND_INITIALIZER) {
		/* nothing */
	} else if (cvp == THR_COND_DESTROYED) {
		error = EINVAL;
	} else {
		cvp = *cond;
		if (cvp->__has_user_waiters || cvp->kcond.c_has_waiters)
			error = EBUSY;
		else {
			*cond = THR_COND_DESTROYED;
			FUNC2(cvp);
		}
	}
	return (error);
}