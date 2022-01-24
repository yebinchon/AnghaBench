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
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 struct timespec FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct timespec FUNC2 (struct timeval) ; 
 scalar_t__ FUNC3 (struct timeval*,int /*<<< orphan*/ *) ; 

struct timespec
FUNC4(void) {
	struct timeval now;
#ifdef CLOCK_REALTIME
	struct timespec tsnow;
	if (clock_gettime(CLOCK_REALTIME, &tsnow) == 0)
		return (tsnow);
#endif
	if (FUNC3(&now, NULL) < 0)
		return (FUNC1(0, 0));
	return (FUNC2(now));
}