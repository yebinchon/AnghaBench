#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int files; } ;

/* Variables and functions */
 scalar_t__ V_WARNING ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ opt_robot ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__ totals ; 

extern void
FUNC4(void)
{
	if (opt_robot) {
		// Always print totals in --robot mode. It can be convenient
		// in some cases and doesn't complicate usage of the
		// single-file case much.
		FUNC3();

	} else if (totals.files > 1) {
		// For non-robot mode, totals are printed only if there
		// is more than one file.
		if (FUNC0() <= V_WARNING)
			FUNC2();
		else
			FUNC1();
	}

	return;
}