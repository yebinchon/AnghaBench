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
struct rk_clk_armclk_sc {int muxdiv_offset; int div_mask; int div_shift; } ;
struct clknode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*,int,int*) ; 
 struct rk_clk_armclk_sc* FUNC3 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct clknode *clk, uint64_t *freq)
{
	struct rk_clk_armclk_sc *sc;
	uint32_t reg, div;

	sc = FUNC3(clk);

	FUNC0(clk);

	FUNC2(clk, sc->muxdiv_offset, &reg);
	FUNC4("Read: muxdiv_offset=%x, val=%x\n", sc->muxdiv_offset, reg);

	FUNC1(clk);

	div = ((reg & sc->div_mask) >> sc->div_shift) + 1;
	FUNC4("parent_freq=%ju, div=%u\n", *freq, div);

	*freq = *freq / div;

	return (0);
}