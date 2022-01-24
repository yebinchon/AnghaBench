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
struct cpu_usage_timer {int /*<<< orphan*/  timeBegin; int /*<<< orphan*/  ticksBegin; int /*<<< orphan*/  kerneltimeBegin; int /*<<< orphan*/  usertimeBegin; int /*<<< orphan*/  thread; } ;
typedef  int /*<<< orphan*/  FILETIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(struct cpu_usage_timer *timer)
{
#ifdef _WIN32
	int r;
	FILETIME createtime, exittime;
	timer->thread = GetCurrentThread();
	r = GetThreadTimes(timer->thread, &createtime, &exittime,
	    &timer->usertimeBegin, &timer->kerneltimeBegin);
	if (r==0) printf("GetThreadTimes failed.");
#else
	timer->ticksBegin = FUNC2();
#endif

	FUNC3(&timer->timeBegin, NULL);
}