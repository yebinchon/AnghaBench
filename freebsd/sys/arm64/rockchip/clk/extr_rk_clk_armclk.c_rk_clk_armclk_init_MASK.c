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
struct rk_clk_armclk_sc {int mux_mask; int mux_shift; int /*<<< orphan*/  muxdiv_offset; } ;
struct clknode {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*,int /*<<< orphan*/ ,int*) ; 
 struct rk_clk_armclk_sc* FUNC3 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC4 (struct clknode*,int) ; 

__attribute__((used)) static int
FUNC5(struct clknode *clk, device_t dev)
{
	struct rk_clk_armclk_sc *sc;
	uint32_t val, idx;

	sc = FUNC3(clk);

	idx = 0;
	FUNC0(clk);
	FUNC2(clk, sc->muxdiv_offset, &val);
	FUNC1(clk);

	idx = (val & sc->mux_mask) >> sc->mux_shift;

	FUNC4(clk, idx);

	return (0);
}