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
 int /*<<< orphan*/  FUNC1 (struct zy7_slcr_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct zy7_slcr_softc*) ; 
#define  ZY7_PL_FCLK_SRC_ARM 130 
#define  ZY7_PL_FCLK_SRC_DDR 129 
#define  ZY7_PL_FCLK_SRC_IO 128 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_MASK ; 
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_SHIFT ; 
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_MASK ; 
 int ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_SHIFT ; 
 int arm_pll_frequency ; 
 int ddr_pll_frequency ; 
 int io_pll_frequency ; 
 int FUNC4 (int) ; 
 struct zy7_slcr_softc* zy7_slcr_softc_p ; 

int
FUNC5(int unit)
{
	struct zy7_slcr_softc *sc = zy7_slcr_softc_p;
	int div0, div1;
	int base_frequency;
	int frequency;
	uint32_t reg;
	int source;

	if (!sc)
		return (-1);

	source = FUNC4(unit);
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

	FUNC1(sc);

	/* Modify FPGAx reference clock. */
	reg = FUNC0(sc, FUNC3(unit));
	div1 = (reg & ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_MASK) >>
	    ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR1_SHIFT;
	div0 = (reg & ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_MASK) >>
	    ZY7_SLCR_FPGA_CLK_CTRL_DIVISOR0_SHIFT;

	FUNC2(sc);

	if (div0 == 0)
		div0 = 1;

	if (div1 == 0)
		div1 = 1;

	frequency = (base_frequency / div0 / div1);
	/* Round to KHz */
	frequency = (frequency + 500) / 1000;
	frequency = frequency * 1000;

	return (frequency);
}