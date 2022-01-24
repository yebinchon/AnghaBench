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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WAIT ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ n_pending_dns ; 
 scalar_t__ n_pending_ntp ; 
 int /*<<< orphan*/  shutting_down ; 
 scalar_t__ time_derived ; 

void
FUNC3(void)
{
	if ((0 == n_pending_ntp && 0 == n_pending_dns) ||
	    (time_derived && !FUNC0(WAIT))) {
		FUNC2(base, NULL);
		shutting_down = TRUE;
	} else {
		FUNC1(2, ("%d NTP and %d name queries pending\n",
			  n_pending_ntp, n_pending_dns));
	}
}