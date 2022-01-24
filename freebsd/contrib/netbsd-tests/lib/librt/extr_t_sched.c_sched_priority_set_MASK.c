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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sched_param*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,struct sched_param*) ; 

__attribute__((used)) static void
FUNC5(int pri, int pol)
{
	struct sched_param sched;

	sched.sched_priority = pri;

	FUNC1(pri >= 0);
	FUNC1(FUNC4(0, pol, &sched) == 0);

	/*
	 * Test that the policy was changed.
	 */
	FUNC0(FUNC3(0), pol);

	/*
	 * And that sched_getparam(3) returns the new priority.
	 */
	sched.sched_priority = -1;

	FUNC1(FUNC2(0, &sched) == 0);
	FUNC0(sched.sched_priority, pri);
}