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
struct anadig_softc {int dummy; } ;

/* Variables and functions */
 int ANADIG_PLL3_CTRL ; 
 int ANADIG_PLL7_CTRL ; 
 int ANADIG_PLL_LOCKED ; 
 int CTRL_BYPASS ; 
 int CTRL_PLL_EN ; 
 int CTRL_PWR ; 
 int EN_USB_CLKS ; 
 int FUNC0 (struct anadig_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct anadig_softc*,int,int) ; 

__attribute__((used)) static int
FUNC2(struct anadig_softc *sc, int pll_ctrl)
{
	int reg;

	reg = FUNC0(sc, pll_ctrl);
	reg &= ~(CTRL_BYPASS | CTRL_PWR);
	if (pll_ctrl == ANADIG_PLL3_CTRL || pll_ctrl == ANADIG_PLL7_CTRL) {
		/* It is USB PLL. Power bit logic is reversed */
		reg |= (CTRL_PWR | EN_USB_CLKS);
	}
	FUNC1(sc, pll_ctrl, reg);

	/* Wait for PLL lock */
	while (!(FUNC0(sc, pll_ctrl) & ANADIG_PLL_LOCKED))
		;

	reg = FUNC0(sc, pll_ctrl);
	reg |= (CTRL_PLL_EN);
	FUNC1(sc, pll_ctrl, reg);

	return (0);
}