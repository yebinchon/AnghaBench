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
 int /*<<< orphan*/  ARM_TMR_FREQUENCY_VARIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int
FUNC3(platform_t plat)
{

	/* Fix soc interrupt-parent property. */
	FUNC1();

	/* Fix iomuxc-gpr and iomuxc nodes both using the same mmio range. */
	FUNC2();

	/* Inform the MPCore timer driver that its clock is variable. */
	FUNC0(ARM_TMR_FREQUENCY_VARIES);

	return (0);
}