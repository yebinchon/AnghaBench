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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct ti_clock_dev {int dummy; } ;
struct omap4_prcm_softc {int /*<<< orphan*/  sc_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM1_INSTANCE ; 
 int /*<<< orphan*/  CM_CLKSEL_DPLL_MPU ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 struct omap4_prcm_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ti_clock_dev *clkdev,
                            unsigned int *freq)
{
	uint32_t clksel;
	uint32_t pll_mult, pll_div;
	uint32_t mpuclk, sysclk;
	struct omap4_prcm_softc *sc;

	sc = FUNC2(CM1_INSTANCE);
	if (sc == NULL)
		return ENXIO;

	/* Read the clksel register which contains the DPLL multiple and divide
	 * values.  These are applied to the sysclk.
	 */
	clksel = FUNC0(sc->sc_res, CM_CLKSEL_DPLL_MPU);

	pll_mult = ((clksel >> 8) & 0x7ff);
	pll_div = (clksel & 0x7f) + 1;
	
	
	/* Get the system clock freq */
	FUNC1(NULL, &sysclk);


	/* Calculate the MPU freq */
	mpuclk = ((uint64_t)sysclk * pll_mult) / pll_div;

	/* Return the value */
	if (freq)
		*freq = mpuclk;
		
	return (0);
}