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
typedef  int uint32_t ;
struct ti_clock_dev {int id; } ;
struct resource {int dummy; } ;
struct omap4_prcm_softc {struct resource* sc_res; } ;
struct omap4_clk_details {int clksel_reg; int enable_mode; int /*<<< orphan*/  instance; } ;

/* Variables and functions */
 int CLKCTRL_IDLEST_ENABLED ; 
 int CLKCTRL_IDLEST_MASK ; 
 int CLKCTRL_MODULEMODE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 unsigned int MAX_MODULE_ENABLE_WAIT ; 
 int FUNC1 (struct resource*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*,int,int) ; 
 struct omap4_clk_details* FUNC3 (int) ; 
 struct omap4_prcm_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 

__attribute__((used)) static int
FUNC6(struct ti_clock_dev *clkdev)
{
	struct omap4_prcm_softc *sc;
	struct omap4_clk_details* clk_details;
	struct resource* clk_mem_res;
	uint32_t clksel;
	unsigned int i;
	clk_details = FUNC3(clkdev->id);

	if (clk_details == NULL)
		return (ENXIO);

	sc = FUNC4(clk_details->instance);
	if (sc == NULL)
		return ENXIO;

	clk_mem_res = sc->sc_res;

	if (clk_mem_res == NULL)
		return (EINVAL);
	
	/* All the 'generic' clocks have a CLKCTRL register which is more or less
	 * generic - the have at least two fielda called MODULEMODE and IDLEST.
	 */
	clksel = FUNC1(clk_mem_res, clk_details->clksel_reg);
	clksel &= ~CLKCTRL_MODULEMODE_MASK;
	clksel |=  clk_details->enable_mode;
	FUNC2(clk_mem_res, clk_details->clksel_reg, clksel);

	/* Now poll on the IDLEST register to tell us if the module has come up.
	 * TODO: We need to take into account the parent clocks.
	 */
	
	/* Try MAX_MODULE_ENABLE_WAIT number of times to check if enabled */
	for (i = 0; i < MAX_MODULE_ENABLE_WAIT; i++) {
		clksel = FUNC1(clk_mem_res, clk_details->clksel_reg);
		if ((clksel & CLKCTRL_IDLEST_MASK) == CLKCTRL_IDLEST_ENABLED)
			break;
		FUNC0(10);
	}
		
	/* Check the enabled state */
	if ((clksel & CLKCTRL_IDLEST_MASK) != CLKCTRL_IDLEST_ENABLED) {
		FUNC5("Error: failed to enable module with clock %d\n", clkdev->id);
		FUNC5("Error: 0x%08x => 0x%08x\n", clk_details->clksel_reg, clksel);
		return (ETIMEDOUT);
	}
	
	return (0);
}