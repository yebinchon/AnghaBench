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
struct procstat {scalar_t__ type; int /*<<< orphan*/  core; int /*<<< orphan*/  kd; } ;

/* Variables and functions */
 scalar_t__ PROCSTAT_CORE ; 
 scalar_t__ PROCSTAT_KVM ; 
 int /*<<< orphan*/  FUNC0 (struct procstat*) ; 
 int /*<<< orphan*/  FUNC1 (struct procstat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct procstat*) ; 
 int /*<<< orphan*/  FUNC5 (struct procstat*) ; 

void
FUNC6(struct procstat *procstat)
{

	FUNC0(procstat);
	if (procstat->type == PROCSTAT_KVM)
		FUNC2(procstat->kd);
	else if (procstat->type == PROCSTAT_CORE)
		FUNC3(procstat->core);
	FUNC4(procstat);
	FUNC5(procstat);
	FUNC1(procstat);
}