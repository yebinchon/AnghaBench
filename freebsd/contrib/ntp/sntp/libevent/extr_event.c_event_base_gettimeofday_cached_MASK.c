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
struct timeval {int dummy; } ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct event_base {int /*<<< orphan*/  tv_clock_diff; TYPE_1__ tv_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,int /*<<< orphan*/ ) ; 
 struct event_base* current_base ; 
 int FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  th_base_lock ; 

int
FUNC4(struct event_base *base, struct timeval *tv)
{
	int r;
	if (!base) {
		base = current_base;
		if (!current_base)
			return FUNC2(tv, NULL);
	}

	FUNC0(base, th_base_lock);
	if (base->tv_cache.tv_sec == 0) {
		r = FUNC2(tv, NULL);
	} else {
		FUNC3(&base->tv_cache, &base->tv_clock_diff, tv);
		r = 0;
	}
	FUNC1(base, th_base_lock);
	return r;
}