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
struct ti_clock_dev {int /*<<< orphan*/  id; } ;
struct resource {int dummy; } ;
struct omap4_prcm_softc {struct resource* sc_res; } ;
struct omap4_clk_details {int /*<<< orphan*/  clksel_reg; int /*<<< orphan*/  instance; } ;

/* Variables and functions */
 int CLKCTRL_IDLEST_ENABLED ; 
 int CLKCTRL_IDLEST_MASK ; 
 int EINVAL ; 
 int ENXIO ; 
 int FUNC0 (struct resource*,int /*<<< orphan*/ ) ; 
 struct omap4_clk_details* FUNC1 (int /*<<< orphan*/ ) ; 
 struct omap4_prcm_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ti_clock_dev *clkdev)
{
	struct omap4_prcm_softc *sc;
	struct omap4_clk_details* clk_details;
	struct resource* clk_mem_res;
	uint32_t clksel;

	clk_details = FUNC1(clkdev->id);

	if (clk_details == NULL)
		return (ENXIO);

	sc = FUNC2(clk_details->instance);
	if (sc == NULL)
		return ENXIO;

	clk_mem_res = sc->sc_res;

	if (clk_mem_res == NULL)
		return (EINVAL);
	
	clksel = FUNC0(clk_mem_res, clk_details->clksel_reg);
		
	/* Check the enabled state */
	if ((clksel & CLKCTRL_IDLEST_MASK) != CLKCTRL_IDLEST_ENABLED)
		return (0);
	
	return (1);
}