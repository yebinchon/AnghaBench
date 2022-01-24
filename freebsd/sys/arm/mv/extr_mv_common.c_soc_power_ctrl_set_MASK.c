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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_PM_CTRL ; 
 scalar_t__ CPU_PM_CTRL_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC1(uint32_t mask)
{

#if !defined(SOC_MV_ORION)
	if (mask != CPU_PM_CTRL_NONE)
		FUNC0(CPU_PM_CTRL, mask);
#endif
}