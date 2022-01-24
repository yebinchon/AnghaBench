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
 int SM_TIME_DEFAULT ; 
 int /*<<< orphan*/  sm_flush ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 

void
FUNC1()
{
	int timeout = SM_TIME_DEFAULT;

	(void) FUNC0(sm_flush, &timeout); /* `cheating' */
}