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
struct timeval {int dummy; } ;
struct evutil_monotonic_timer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evutil_monotonic_timer*,struct timeval*) ; 
 scalar_t__ FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 

int
FUNC2(struct evutil_monotonic_timer *base,
    struct timeval *tp)
{
	if (FUNC1(tp, NULL) < 0)
		return -1;
	FUNC0(base, tp);
	return 0;

}