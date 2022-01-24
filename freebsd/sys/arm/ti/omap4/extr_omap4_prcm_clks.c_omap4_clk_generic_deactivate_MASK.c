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
typedef  int /*<<< orphan*/  uint32_t ;
struct ti_clock_dev {int /*<<< orphan*/  id; } ;
struct resource {int dummy; } ;
struct omap4_prcm_softc {struct resource* sc_res; } ;
struct omap4_clk_details {int /*<<< orphan*/  clksel_reg; int /*<<< orphan*/  instance; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLKCTRL_MODULEMODE_DISABLE ; 
 int /*<<< orphan*/  CLKCTRL_MODULEMODE_MASK ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap4_clk_details* FUNC2 (int /*<<< orphan*/ ) ; 
 struct omap4_prcm_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ti_clock_dev *clkdev)
{
	struct omap4_prcm_softc *sc;
	struct omap4_clk_details* clk_details;
	struct resource* clk_mem_res;
	uint32_t clksel;

	clk_details = FUNC2(clkdev->id);

	if (clk_details == NULL)
		return (ENXIO);

	sc = FUNC3(clk_details->instance);
	if (sc == NULL)
		return ENXIO;

	clk_mem_res = sc->sc_res;

	if (clk_mem_res == NULL)
		return (EINVAL);
	
	/* All the 'generic' clocks have a CLKCTRL register which is more or less
	 * generic - the have at least two fielda called MODULEMODE and IDLEST.
	 */
	clksel = FUNC0(clk_mem_res, clk_details->clksel_reg);
	clksel &= ~CLKCTRL_MODULEMODE_MASK;
	clksel |=  CLKCTRL_MODULEMODE_DISABLE;
	FUNC1(clk_mem_res, clk_details->clksel_reg, clksel);

	return (0);
}