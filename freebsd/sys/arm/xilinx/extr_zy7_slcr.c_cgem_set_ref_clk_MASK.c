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
struct zy7_slcr_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zy7_slcr_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct zy7_slcr_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct zy7_slcr_softc*) ; 
 int /*<<< orphan*/  ZY7_SLCR_GEM0_CLK_CTRL ; 
 int /*<<< orphan*/  ZY7_SLCR_GEM1_CLK_CTRL ; 
 int ZY7_SLCR_GEM_CLK_CTRL_CLKACT ; 
 int ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_MAX ; 
 int ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_SHIFT ; 
 int ZY7_SLCR_GEM_CLK_CTRL_DIVISOR_MAX ; 
 int ZY7_SLCR_GEM_CLK_CTRL_DIVISOR_SHIFT ; 
 int ZY7_SLCR_GEM_CLK_CTRL_SRCSEL_IO_PLL ; 
 int io_pll_frequency ; 
 int /*<<< orphan*/  FUNC3 (struct zy7_slcr_softc*) ; 
 struct zy7_slcr_softc* zy7_slcr_softc_p ; 
 int /*<<< orphan*/  FUNC4 (struct zy7_slcr_softc*) ; 

int
FUNC5(int unit, int frequency)
{
	struct zy7_slcr_softc *sc = zy7_slcr_softc_p;
	int div0, div1;

	if (!sc)
		return (-1);

	/* Find suitable divisor pairs.  Round result to nearest khz
	 * to test for match.
	 */
	for (div1 = 1; div1 <= ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_MAX; div1++) {
		div0 = (io_pll_frequency + div1 * frequency / 2) /
			div1 / frequency;
		if (div0 > 0 && div0 <= ZY7_SLCR_GEM_CLK_CTRL_DIVISOR_MAX &&
		    ((io_pll_frequency / div0 / div1) + 500) / 1000 ==
		    (frequency + 500) / 1000)
			break;
	}

	if (div1 > ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_MAX)
		return (-1);

	FUNC1(sc);

	/* Unlock SLCR registers. */
	FUNC4(sc);

	/* Modify GEM reference clock. */
	FUNC0(sc, unit ? ZY7_SLCR_GEM1_CLK_CTRL : ZY7_SLCR_GEM0_CLK_CTRL,
	    (div1 << ZY7_SLCR_GEM_CLK_CTRL_DIVISOR1_SHIFT) |
	    (div0 << ZY7_SLCR_GEM_CLK_CTRL_DIVISOR_SHIFT) |
	    ZY7_SLCR_GEM_CLK_CTRL_SRCSEL_IO_PLL |
	    ZY7_SLCR_GEM_CLK_CTRL_CLKACT);

	/* Lock SLCR registers. */
	FUNC3(sc);

	FUNC2(sc);

	return (0);
}