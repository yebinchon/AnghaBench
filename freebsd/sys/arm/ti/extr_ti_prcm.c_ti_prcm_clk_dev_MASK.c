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
struct ti_clock_dev {scalar_t__ id; } ;
typedef  scalar_t__ clk_ident_t ;

/* Variables and functions */
#define  CHIP_AM335X 129 
#define  CHIP_OMAP_4 128 
 scalar_t__ INVALID_CLK_IDENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 struct ti_clock_dev* ti_am335x_clk_devmap ; 
 int FUNC2 () ; 
 struct ti_clock_dev* ti_omap4_clk_devmap ; 

__attribute__((used)) static struct ti_clock_dev *
FUNC3(clk_ident_t clk)
{
	struct ti_clock_dev *clk_dev;
	
	/* Find the clock within the devmap - it's a bit inefficent having a for 
	 * loop for this, but this function should only called when a driver is 
	 * being activated so IMHO not a big issue.
	 */
	clk_dev = NULL;
	switch(FUNC2()) {
#ifdef SOC_OMAP4
	case CHIP_OMAP_4:
		clk_dev = &(ti_omap4_clk_devmap[0]);
		break;
#endif
#ifdef SOC_TI_AM335X
	case CHIP_AM335X:
		clk_dev = &(ti_am335x_clk_devmap[0]);
		break;
#endif
	}
	if (clk_dev == NULL)
		FUNC0("No clock devmap found");
	while (clk_dev->id != INVALID_CLK_IDENT) {
		if (clk_dev->id == clk) {
			return (clk_dev);
		}
		clk_dev++;
	}

	/* Sanity check we managed to find the clock */
	FUNC1("ti_prcm: Failed to find clock device (%d)\n", clk);
	return (NULL);
}