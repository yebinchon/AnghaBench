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
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 () ; 
 double FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC5(void *p)
{
	double *q = (double *)p;
	double x = *q++;
	double y = *q++;
	double z = *q++;

	for (;;) {
		x = FUNC3 ((y = FUNC1 (x + y + .4)) - (z = FUNC1 (x + z + .6)));
		FUNC0(FUNC2() == 0,
		    "sched_yield failed: %s", FUNC4(errno));
	}
}