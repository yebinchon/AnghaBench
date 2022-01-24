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
 int /*<<< orphan*/  FUNC4 (int) ; 
 int ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_MASK ; 
 int ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_SHIFT ; 
 int /*<<< orphan*/  FUNC5 (struct zy7_slcr_softc*) ; 
 struct zy7_slcr_softc* zy7_slcr_softc_p ; 
 int /*<<< orphan*/  FUNC6 (struct zy7_slcr_softc*) ; 

int 
FUNC7(int unit, int source)
{
	struct zy7_slcr_softc *sc = zy7_slcr_softc_p;
	uint32_t reg;

	if (!sc)
		return (-1);

	FUNC2(sc);

	/* Unlock SLCR registers. */
	FUNC6(sc);

	/* Modify FPGAx source. */
	reg = FUNC0(sc, FUNC4(unit));
	reg &= ~(ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_MASK);
	reg |= (source << ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_SHIFT);
	FUNC1(sc, FUNC4(unit), reg);

	/* Lock SLCR registers. */
	FUNC5(sc);

	FUNC3(sc);

	return (0);
}