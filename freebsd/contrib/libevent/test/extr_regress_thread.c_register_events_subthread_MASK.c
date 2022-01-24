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
struct timeval {int tv_usec; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  THREAD_FN ;

/* Variables and functions */
 int /*<<< orphan*/  EV_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/ * time_events ; 

__attribute__((used)) static THREAD_FN
FUNC4(void *arg)
{
	struct timeval tv = {0,0};
	FUNC0(100);
	FUNC2(&time_events[0], EV_TIMEOUT, 1);
	FUNC0(100);
	FUNC2(&time_events[1], EV_TIMEOUT, 1);
	FUNC0(100);
	tv.tv_usec = 100*1000;
	FUNC3(&time_events[2], &tv);
	tv.tv_usec = 150*1000;
	FUNC3(&time_events[3], &tv);
	FUNC0(200);
	FUNC2(&time_events[4], EV_TIMEOUT, 1);

	FUNC1();
}