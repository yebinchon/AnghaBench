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
struct ti_clock_dev {int dummy; } ;
struct am335x_prcm_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_PER_LCDC_CLKCTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (struct ti_clock_dev*,int) ; 
 struct am335x_prcm_softc* am335x_prcm_sc ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct ti_clock_dev *clkdev)
{
	struct am335x_prcm_softc *sc = am335x_prcm_sc;

	if (sc == NULL)
		return (ENXIO);

	/*
	 * For now set frequency to 2*VGA_PIXEL_CLOCK 
	 */
	FUNC1(clkdev, 25175000*2);

	/*set MODULEMODE to ENABLE(2) */
	FUNC3(CM_PER_LCDC_CLKCTRL, 2);

	/* wait for MODULEMODE to become ENABLE(2) */
	while ((FUNC2(CM_PER_LCDC_CLKCTRL) & 0x3) != 2)
		FUNC0(10);

	/* wait for IDLEST to become Func(0) */
	while(FUNC2(CM_PER_LCDC_CLKCTRL) & (3<<16))
		FUNC0(10);

	return (0);
}