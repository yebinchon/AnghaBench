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
typedef  unsigned int uint32_t ;
struct ti_clock_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_WKUP_CM_CLKSEL_DPLL_MPU ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct ti_clock_dev *clkdev, unsigned int *freq)
{
	uint32_t reg;
	uint32_t sysclk;

	reg = FUNC4(CM_WKUP_CM_CLKSEL_DPLL_MPU);

	/*Check if we are running in bypass */
	if (FUNC0(reg))
		return ENXIO;

	FUNC3(NULL, &sysclk);
	*freq = FUNC2(reg) * (sysclk / FUNC1(reg));
	return(0);
}