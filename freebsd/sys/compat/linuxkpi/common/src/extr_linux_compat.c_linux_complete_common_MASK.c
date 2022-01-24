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
struct completion {scalar_t__ done; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLEEPQ_SLEEP ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct completion*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct completion*) ; 
 int /*<<< orphan*/  FUNC3 (struct completion*) ; 
 int FUNC4 (struct completion*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(struct completion *c, int all)
{
	int wakeup_swapper;

	FUNC2(c);
	if (all) {
		c->done = UINT_MAX;
		wakeup_swapper = FUNC1(c, SLEEPQ_SLEEP, 0, 0);
	} else {
		if (c->done != UINT_MAX)
			c->done++;
		wakeup_swapper = FUNC4(c, SLEEPQ_SLEEP, 0, 0);
	}
	FUNC3(c);
	if (wakeup_swapper)
		FUNC0();
}