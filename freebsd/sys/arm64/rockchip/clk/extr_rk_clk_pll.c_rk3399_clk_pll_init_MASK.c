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
struct rk_clk_pll_sc {scalar_t__ base_offset; scalar_t__ normal_mode; } ;
struct clknode {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int RK3399_CLK_PLL_MODE_MASK ; 
 int RK3399_CLK_PLL_MODE_NORMAL ; 
 scalar_t__ RK3399_CLK_PLL_MODE_OFFSET ; 
 int RK3399_CLK_PLL_MODE_SHIFT ; 
 int RK3399_CLK_PLL_WRITE_MASK ; 
 int RK_CLK_PLL_MASK_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct clknode*,scalar_t__,int) ; 
 struct rk_clk_pll_sc* FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct clknode *clk, device_t dev)
{
	struct rk_clk_pll_sc *sc;
	uint32_t reg;

	sc = FUNC1(clk);

	if (sc->normal_mode) {
		/* Setting to normal mode */
		reg = RK3399_CLK_PLL_MODE_NORMAL << RK3399_CLK_PLL_MODE_SHIFT;
		reg |= RK3399_CLK_PLL_MODE_MASK << RK_CLK_PLL_MASK_SHIFT;
		FUNC0(clk, sc->base_offset + RK3399_CLK_PLL_MODE_OFFSET,
		    reg | RK3399_CLK_PLL_WRITE_MASK);
	}

	FUNC2(clk, 0);

	return (0);
}