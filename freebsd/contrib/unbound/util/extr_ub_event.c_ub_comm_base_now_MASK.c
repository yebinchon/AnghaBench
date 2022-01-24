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
typedef  int /*<<< orphan*/  time_t ;
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct comm_base {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comm_base*,int /*<<< orphan*/ **,struct timeval**) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct comm_base* cb)
{
#ifdef USE_MINI_EVENT
/** minievent updates the time when it blocks. */
	(void)cb; /* nothing to do */
#else /* !USE_MINI_EVENT */
/** fillup the time values in the event base */
	time_t *tt;
	struct timeval *tv;
	FUNC0(cb, &tt, &tv);
	if(FUNC1(tv, NULL) < 0) {
		FUNC2("gettimeofday: %s", FUNC3(errno));
	}
	*tt = tv->tv_sec;
#endif /* USE_MINI_EVENT */
}