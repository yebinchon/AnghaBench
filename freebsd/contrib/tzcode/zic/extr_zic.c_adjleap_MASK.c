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
 long* corr ; 
 int leapcnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/ * trans ; 

__attribute__((used)) static void
FUNC1(void)
{
	register int	i;
	register long	last = 0;

	/*
	** propagate leap seconds forward
	*/
	for (i = 0; i < leapcnt; ++i) {
		trans[i] = FUNC0(trans[i], last);
		last = corr[i] += last;
	}
}