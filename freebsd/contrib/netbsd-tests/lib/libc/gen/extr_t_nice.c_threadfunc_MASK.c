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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PRIO_PROCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC3(void *arg)
{
	int pri, val;

	val = *(int *)arg;

	errno = 0;
	pri = FUNC2(PRIO_PROCESS, 0);
	FUNC0(errno == 0);

	if (pri != val)
		FUNC1("nice(3) value was not propagated to threads");

	return NULL;
}