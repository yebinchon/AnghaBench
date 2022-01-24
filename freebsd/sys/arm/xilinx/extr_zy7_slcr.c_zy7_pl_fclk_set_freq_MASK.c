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
struct zy7_slcr_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct zy7_slcr_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zy7_slcr_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct zy7_slcr_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct zy7_slcr_softc*) ; 
#define  ZY7_PL_FCLK_SRC_ARM 130 
#define  ZY7_PL_FCLK_SRC_DDR 129 
#define  ZY7_PL_FCLK_SRC_IO 128 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_MASK ; 
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_SHIFT ; 
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_MASK ; 
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_SHIFT ; 
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR_MAX ; 
 int arm_pll_frequency ; 
 int ddr_pll_frequency ; 
 int io_pll_frequency ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct zy7_slcr_softc*) ; 
 struct zy7_slcr_softc* zy7_slcr_softc_p ; 
 int /*<<< orphan*/  FUNC7 (struct zy7_slcr_softc*) ; 

int
FUNC8(int unit, int frequency)
{
	struct zy7_slcr_softc *sc = zy7_slcr_softc_p;
	int div0, div1;
	int base_frequency;
	uint32_t reg;
	int source;

	if (!sc)
		return (-1);

	source = FUNC5(unit);
	switch (source) {
		case ZY7_PL_FCLK_SRC_IO:
			base_frequency = io_pll_frequency;
			break;

		case ZY7_PL_FCLK_SRC_ARM:
			base_frequency = arm_pll_frequency;
			break;

		case ZY7_PL_FCLK_SRC_DDR:
			base_frequency = ddr_pll_frequency;
			break;

		default:
			return (-1);
	}

	/* Find suitable divisor pairs.  Round result to nearest khz
	 * to test for match.
	 */
	for (div1 = 1; div1 <= ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR_MAX; div1++) {
		div0 = (base_frequency + div1 * frequency / 2) /
			div1 / frequency;
		if (div0 > 0 && div0 <= ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR_MAX &&
		    ((base_frequency / div0 / div1) + 500) / 1000 ==
		    (frequency + 500) / 1000)
			break;
	}

	if (div1 > ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR_MAX)
		return (-1);

	FUNC2(sc);

	/* Unlock SLCR registers. */
	FUNC7(sc);

	/* Modify FPGAx reference clock. */
	reg = FUNC0(sc, FUNC4(unit));
	reg &= ~(ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_MASK |
	    ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_MASK);
	reg |= (div1 << ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_SHIFT) |
	    (div0 << ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_SHIFT);
	FUNC1(sc, FUNC4(unit), reg);

	/* Lock SLCR registers. */
	FUNC6(sc);

	FUNC3(sc);

	return (base_frequency / div0 / div1);
}