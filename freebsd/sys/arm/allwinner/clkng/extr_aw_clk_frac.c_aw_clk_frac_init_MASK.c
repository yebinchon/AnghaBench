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
struct aw_clk_frac_sc {int flags; int mux_mask; int mux_shift; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AW_CLK_HAS_MUX ; 
 int /*<<< orphan*/  FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*,int /*<<< orphan*/ ,int*) ; 
 struct aw_clk_frac_sc* FUNC3 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC4 (struct clknode*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int
FUNC6(struct clknode *clk, device_t dev)
{
	struct aw_clk_frac_sc *sc;
	uint32_t val, idx;

	sc = FUNC3(clk);

	idx = 0;
	if ((sc->flags & AW_CLK_HAS_MUX) != 0) {
		FUNC0(clk);
		FUNC2(clk, sc->offset, &val);
		FUNC1(clk);

		idx = (val & sc->mux_mask) >> sc->mux_shift;
	}

	FUNC5("init parent idx %d\n", idx);
	FUNC4(clk, idx);
	return (0);
}