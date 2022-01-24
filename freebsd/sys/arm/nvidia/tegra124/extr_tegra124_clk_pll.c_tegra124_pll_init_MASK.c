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
struct pll_sc {int lock_enable; scalar_t__ type; int /*<<< orphan*/  misc_reg; int /*<<< orphan*/  base_reg; } ;
struct clknode {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PLL_BASE_ENABLE ; 
 scalar_t__ PLL_REFE ; 
 int /*<<< orphan*/  FUNC0 (struct pll_sc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pll_sc*,int /*<<< orphan*/ ,int) ; 
 struct pll_sc* FUNC2 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC3 (struct clknode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct clknode *clk, device_t dev)
{
	struct pll_sc *sc;
	uint32_t reg;

	sc = FUNC2(clk);

	/* If PLL is enabled, enable lock detect too. */
	FUNC0(sc, sc->base_reg, &reg);
	if (reg & PLL_BASE_ENABLE) {
		FUNC0(sc, sc->misc_reg, &reg);
		reg |= sc->lock_enable;
		FUNC1(sc, sc->misc_reg, reg);
	}
	if (sc->type == PLL_REFE) {
		FUNC0(sc, sc->misc_reg, &reg);
		reg &= ~(1 << 29);	/* Diasble lock override */
		FUNC1(sc, sc->misc_reg, reg);
	}

	FUNC3(clk, 0);
	return(0);
}