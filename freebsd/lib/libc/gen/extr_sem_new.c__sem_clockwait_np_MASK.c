#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timespec {int tv_nsec; } ;
struct TYPE_6__ {int _count; } ;
struct TYPE_5__ {TYPE_2__ _kern; } ;
typedef  TYPE_1__ sem_t ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int*,int,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int,struct timespec const*,struct timespec*) ; 

int
FUNC7(sem_t * __restrict sem, clockid_t clock_id, int flags,
	const struct timespec *rqtp, struct timespec *rmtp)
{
	int val, retval;

	if (FUNC5(sem) != 0)
		return (-1);

	retval = 0;
	FUNC3();
	for (;;) {
		while (FUNC0(val = sem->_kern._count) > 0) {
			if (FUNC4(&sem->_kern._count, val,
			    val - 1))
				return (0);
		}

		if (retval) {
			FUNC3();
			break;
		}

		/*
		 * The timeout argument is only supposed to
		 * be checked if the thread would have blocked.
		 */
		if (rqtp != NULL) {
			if (rqtp->tv_nsec >= 1000000000 || rqtp->tv_nsec < 0) {
				errno = EINVAL;
				return (-1);
			}
		}
		FUNC1(1);
		retval = FUNC6(&sem->_kern, clock_id, flags, rqtp, rmtp);
		FUNC2(0);
	}
	return (retval);
}