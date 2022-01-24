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
 int EINVAL ; 
 int ENXIO ; 
 unsigned int FREQ_32KHZ ; 
 int FUNC0 (struct resource*,int /*<<< orphan*/ ) ; 
 struct omap4_clk_details* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int*) ; 
 struct omap4_prcm_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ti_clock_dev *clkdev,
                                  unsigned int *freq
                                  )
{
	struct omap4_prcm_softc *sc;
	struct omap4_clk_details* clk_details;
	struct resource* clk_mem_res;
	uint32_t clksel;
	unsigned int src_freq;

	clk_details = FUNC1(clkdev->id);

	if (clk_details == NULL)
		return (ENXIO);

	sc = FUNC3(clk_details->instance);
	if (sc == NULL)
		return ENXIO;

	clk_mem_res = sc->sc_res;

	if (clk_mem_res == NULL)
		return (EINVAL);
	
	/* Need to read the CLKSEL field to determine the clock source */
	clksel = FUNC0(clk_mem_res, clk_details->clksel_reg);
	if (clksel & (0x1UL << 24))
		src_freq = FREQ_32KHZ;
	else
		FUNC2(NULL, &src_freq);
	
	/* Return the frequency */
	if (freq)
		*freq = src_freq;
	
	return (0);
}