#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timespec {int tv_nsec; } ;
typedef  TYPE_1__* sem_t ;
struct TYPE_5__ {scalar_t__ syssem; int count; int /*<<< orphan*/  nwaiters; int /*<<< orphan*/  semid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int*,int /*<<< orphan*/ ,struct timespec const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int*,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  sem_cancel_handler ; 
 scalar_t__ FUNC9 (TYPE_1__**) ; 

int
FUNC10(sem_t * __restrict sem,
	const struct timespec * __restrict abstime)
{
	int val, retval;

	if (FUNC9(sem) != 0)
		return (-1);

	if ((*sem)->syssem != 0) {
		FUNC0(1);
		retval = FUNC6((*sem)->semid); /* XXX no timeout */
		FUNC1(retval == -1);
		return (retval);
	}

	retval = 0;
	FUNC2();
	for (;;) {
		while ((val = (*sem)->count) > 0) {
			if (FUNC5(&(*sem)->count, val, val - 1))
				return (0);
		}
		if (retval) {
			FUNC2();
			break;
		}
		if (abstime) {
			if (abstime->tv_nsec >= 1000000000 || abstime->tv_nsec < 0) {
				errno = EINVAL;
				return (-1);
			}
		}
		FUNC4(&(*sem)->nwaiters, 1);
		FUNC8(sem_cancel_handler, sem);
		FUNC0(1);
		retval = FUNC3(&(*sem)->count, 0, abstime);
		FUNC1(0);
		FUNC7(0);
		FUNC4(&(*sem)->nwaiters, -1);
	}
	return (retval);
}