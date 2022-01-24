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
struct timespec {int dummy; } ;
struct TYPE_3__ {scalar_t__ tv_sec; int tv_nsec; } ;
struct itimerspec {TYPE_1__ it_value; } ;
struct timerfd {struct itimerspec tfd_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timerfd*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct timespec*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(struct timerfd *tfd, struct itimerspec *ots)
{
	struct timespec cts;

	FUNC0(tfd, &cts);
	*ots = tfd->tfd_time;
	if (ots->it_value.tv_sec != 0 || ots->it_value.tv_nsec != 0) {
		FUNC1(&ots->it_value, &cts, &ots->it_value);
		if (ots->it_value.tv_sec < 0 ||
		    (ots->it_value.tv_sec == 0 &&
		     ots->it_value.tv_nsec == 0)) {
			ots->it_value.tv_sec  = 0;
			ots->it_value.tv_nsec = 1;
		}
	}
}