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
struct resource {int dummy; } ;
struct omap4_prcm_softc {struct resource* sc_res; } ;
struct omap4_clk_details {int /*<<< orphan*/  instance; } ;
typedef  int /*<<< orphan*/  clk_src_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 struct omap4_clk_details* FUNC0 (int /*<<< orphan*/ ) ; 
 struct omap4_prcm_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct ti_clock_dev *clkdev,
                             clk_src_t clksrc)
{
	struct omap4_prcm_softc *sc;
	struct omap4_clk_details* clk_details;
	struct resource* clk_mem_res;

	clk_details = FUNC0(clkdev->id);

	if (clk_details == NULL)
		return (ENXIO);

	sc = FUNC1(clk_details->instance);
	if (sc == NULL)
		return ENXIO;

	clk_mem_res = sc->sc_res;

	if (clk_mem_res == NULL)
		return (EINVAL);
	
	/* TODO: Implement */
	
	return (0);
}