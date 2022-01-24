#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pthread_mutexattr_t ;
struct TYPE_3__ {int m_robust; } ;

/* Variables and functions */
 int EINVAL ; 
 int PTHREAD_MUTEX_ROBUST ; 
 int PTHREAD_MUTEX_STALLED ; 

int
FUNC0(pthread_mutexattr_t *mattr, int robust)
{
	int ret;

	if (mattr == NULL || *mattr == NULL) {
		ret = EINVAL;
	} else if (robust != PTHREAD_MUTEX_STALLED &&
	    robust != PTHREAD_MUTEX_ROBUST) {
		ret = EINVAL;
	} else {
		ret = 0;
		(*mattr)->m_robust = robust;
	}
	return (ret);
}