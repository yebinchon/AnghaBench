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
typedef  int /*<<< orphan*/  platform_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 

void
FUNC2(platform_t plate)
{
	int rv;

	/* Write secondary entry address to PMSU register */
	rv = FUNC1();
	if (rv != 0)
		return;

	/* Release CPU1 from reset */
	FUNC0();
}