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
struct ti_clock_dev {int /*<<< orphan*/  id; } ;
struct am335x_prcm_softc {int dummy; } ;
struct am335x_clk_details {int /*<<< orphan*/  clkctrl_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 struct am335x_clk_details* FUNC1 (int /*<<< orphan*/ ) ; 
 struct am335x_prcm_softc* am335x_prcm_sc ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct ti_clock_dev *clkdev)
{
	struct am335x_prcm_softc *sc = am335x_prcm_sc;
	struct am335x_clk_details* clk_details;

	if (sc == NULL)
		return ENXIO;

	clk_details = FUNC1(clkdev->id);

	if (clk_details == NULL)
		return (ENXIO);

	/* set *_CLKCTRL register MODULEMODE[1:0] to enable(2) */
	FUNC3(clk_details->clkctrl_reg, 2);
	while ((FUNC2(clk_details->clkctrl_reg) & 0x3) != 2)
		FUNC0(10);

	return (0);
}