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
struct clknode {int dummy; } ;
struct aw_clk_prediv_mux_sc {int mux_mask; int mux_shift; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct clknode*,int /*<<< orphan*/ ,int) ; 
 struct aw_clk_prediv_mux_sc* FUNC4 (struct clknode*) ; 

__attribute__((used)) static int
FUNC5(struct clknode *clk, int index)
{
	struct aw_clk_prediv_mux_sc *sc;
	uint32_t val;

	sc = FUNC4(clk);

	FUNC0(clk);
	FUNC2(clk, sc->offset, &val);
	val &= ~sc->mux_mask;
	val |= index << sc->mux_shift;
	FUNC3(clk, sc->offset, val);
	FUNC1(clk);

	return (0);
}