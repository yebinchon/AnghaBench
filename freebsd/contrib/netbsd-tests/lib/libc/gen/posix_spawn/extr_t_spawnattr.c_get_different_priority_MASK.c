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
struct sched_param {int sched_priority; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sched_param*) ; 

__attribute__((used)) static int
FUNC3(int scheduler)
{
	int max, min, new, priority;
	struct sched_param param;

	max = FUNC0(scheduler);
	min = FUNC1(scheduler);

	FUNC2(0, &param);
	priority = param.sched_priority;

	/*
	 * Change numerical value of the priority, to ensure that it
	 * was set for the spawned child.
	 */
	new = priority + 1;
	if (new > max)
		new = min;
	return new;
}