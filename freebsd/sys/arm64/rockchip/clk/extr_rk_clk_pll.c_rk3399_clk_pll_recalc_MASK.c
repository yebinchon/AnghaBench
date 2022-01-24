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
struct rk_clk_pll_sc {scalar_t__ base_offset; } ;
struct clknode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*,scalar_t__,int*) ; 
 int RK3399_CLK_PLL_DSMPD_MASK ; 
 int RK3399_CLK_PLL_DSMPD_SHIFT ; 
 int RK3399_CLK_PLL_FBDIV_MASK ; 
 int RK3399_CLK_PLL_FBDIV_SHIFT ; 
 int RK3399_CLK_PLL_FRAC_MASK ; 
 int RK3399_CLK_PLL_FRAC_SHIFT ; 
 int RK3399_CLK_PLL_MODE_DEEPSLOW ; 
 int RK3399_CLK_PLL_MODE_MASK ; 
 int RK3399_CLK_PLL_MODE_SHIFT ; 
 int RK3399_CLK_PLL_MODE_SLOW ; 
 int RK3399_CLK_PLL_POSTDIV1_MASK ; 
 int RK3399_CLK_PLL_POSTDIV1_SHIFT ; 
 int RK3399_CLK_PLL_POSTDIV2_MASK ; 
 int RK3399_CLK_PLL_POSTDIV2_SHIFT ; 
 int RK3399_CLK_PLL_REFDIV_MASK ; 
 int RK3399_CLK_PLL_REFDIV_SHIFT ; 
 struct rk_clk_pll_sc* FUNC3 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int
FUNC5(struct clknode *clk, uint64_t *freq)
{
	struct rk_clk_pll_sc *sc;
	uint32_t dsmpd, refdiv, fbdiv;
	uint32_t postdiv1, postdiv2, fracdiv;
	uint32_t con1, con2, con3, con4;
	uint64_t foutvco;
	uint32_t mode;
	sc = FUNC3(clk);

	FUNC0(clk);
	FUNC2(clk, sc->base_offset, &con1);
	FUNC2(clk, sc->base_offset + 4, &con2);
	FUNC2(clk, sc->base_offset + 8, &con3);
	FUNC2(clk, sc->base_offset + 0xC, &con4);
	FUNC1(clk);

	/*
	 * if we are in slow mode the output freq
	 * is the parent one, the 24Mhz external oscillator
	 * if we are in deep mode the output freq is 32.768khz
	 */
	mode = (con4 & RK3399_CLK_PLL_MODE_MASK) >> RK3399_CLK_PLL_MODE_SHIFT;
	if (mode == RK3399_CLK_PLL_MODE_SLOW) {
		FUNC4("pll in slow mode, con4=%x\n", con4);
		return (0);
	} else if (mode == RK3399_CLK_PLL_MODE_DEEPSLOW) {
		FUNC4("pll in deep slow, con4=%x\n", con4);
		*freq = 32768;
		return (0);
	}

	FUNC4("con0: %x\n", con1);
	FUNC4("con1: %x\n", con2);
	FUNC4("con2: %x\n", con3);
	FUNC4("con3: %x\n", con4);

	fbdiv = (con1 & RK3399_CLK_PLL_FBDIV_MASK)
	    >> RK3399_CLK_PLL_FBDIV_SHIFT;

	postdiv1 = (con2 & RK3399_CLK_PLL_POSTDIV1_MASK)
	    >> RK3399_CLK_PLL_POSTDIV1_SHIFT;
	postdiv2 = (con2 & RK3399_CLK_PLL_POSTDIV2_MASK)
	    >> RK3399_CLK_PLL_POSTDIV2_SHIFT;
	refdiv = (con2 & RK3399_CLK_PLL_REFDIV_MASK)
	    >> RK3399_CLK_PLL_REFDIV_SHIFT;

	fracdiv = (con3 & RK3399_CLK_PLL_FRAC_MASK)
	    >> RK3399_CLK_PLL_FRAC_SHIFT;
	fracdiv >>= 24;

	dsmpd = (con4 & RK3399_CLK_PLL_DSMPD_MASK) >> RK3399_CLK_PLL_DSMPD_SHIFT;

	FUNC4("fbdiv: %d\n", fbdiv);
	FUNC4("postdiv1: %d\n", postdiv1);
	FUNC4("postdiv2: %d\n", postdiv2);
	FUNC4("refdiv: %d\n", refdiv);
	FUNC4("fracdiv: %d\n", fracdiv);
	FUNC4("dsmpd: %d\n", dsmpd);

	FUNC4("parent freq=%ju\n", *freq);

	if (dsmpd == 0) {
		/* Fractional mode */
		foutvco = *freq / refdiv * (fbdiv + fracdiv);
	} else {
		/* Integer mode */
		foutvco = *freq / refdiv * fbdiv;
	}
	FUNC4("foutvco: %ju\n", foutvco);

	*freq = foutvco / postdiv1 / postdiv2;
	FUNC4("freq: %ju\n", *freq);

	return (0);
}