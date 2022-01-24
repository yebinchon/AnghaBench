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
struct rk_clk_composite_sc {int flags; int mux_shift; int mux_mask; int /*<<< orphan*/  muxdiv_offset; } ;
struct clknode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int RK_CLK_COMPOSITE_HAVE_MUX ; 
 int RK_CLK_COMPOSITE_MASK_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*,int /*<<< orphan*/ ,int) ; 
 struct rk_clk_composite_sc* FUNC3 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 

__attribute__((used)) static int
FUNC5(struct clknode *clk, int index)
{
	struct rk_clk_composite_sc *sc;
	uint32_t val = 0;

	sc = FUNC3(clk);

	if ((sc->flags & RK_CLK_COMPOSITE_HAVE_MUX) == 0)
		return (0);

	FUNC4("Set mux to %d\n", index);
	FUNC0(clk);
	val |= (index << sc->mux_shift);
	val |= sc->mux_mask << RK_CLK_COMPOSITE_MASK_SHIFT;
	FUNC4("Write: muxdiv_offset=%x, val=%x\n", sc->muxdiv_offset, val);
	FUNC2(clk, sc->muxdiv_offset, val);
	FUNC1(clk);

	return (0);
}