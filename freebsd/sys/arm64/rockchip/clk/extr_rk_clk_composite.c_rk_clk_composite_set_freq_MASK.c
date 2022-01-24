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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct rk_clk_composite_sc {scalar_t__ div_mask; scalar_t__ div_shift; scalar_t__ muxdiv_offset; } ;
struct clknode {int dummy; } ;

/* Variables and functions */
 int CLK_SET_DRYRUN ; 
 int CLK_SET_ROUND_DOWN ; 
 int CLK_SET_ROUND_UP ; 
 int /*<<< orphan*/  FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int ERANGE ; 
 scalar_t__ RK_CLK_COMPOSITE_MASK_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*,scalar_t__,scalar_t__) ; 
 struct clknode* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct clknode*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct clknode*) ; 
 int FUNC6 (struct clknode*) ; 
 char** FUNC7 (struct clknode*) ; 
 int FUNC8 (struct clknode*) ; 
 struct rk_clk_composite_sc* FUNC9 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC10 (struct clknode*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,...) ; 
 scalar_t__ FUNC12 (struct rk_clk_composite_sc*,scalar_t__,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static int
FUNC13(struct clknode *clk, uint64_t fparent, uint64_t *fout,
    int flags, int *stop)
{
	struct rk_clk_composite_sc *sc;
	struct clknode *p_clk;
	const char **p_names;
	uint64_t best, cur;
	uint32_t div, div_reg, best_div, best_div_reg, val;
	int p_idx, best_parent;

	sc = FUNC9(clk);
	FUNC11("Finding best parent/div for target freq of %ju\n", *fout);
	p_names = FUNC7(clk);
	for (best_div = 0, best = 0, p_idx = 0;
	     p_idx != FUNC8(clk); p_idx++) {
		p_clk = FUNC3(p_names[p_idx]);
		FUNC4(p_clk, &fparent);
		FUNC11("Testing with parent %s (%d) at freq %ju\n",
		    FUNC5(p_clk), p_idx, fparent);
		div = FUNC12(sc, fparent, *fout, &div_reg);
		cur = fparent / div;
		if ((*fout - cur) < (*fout - best)) {
			best = cur;
			best_div = div;
			best_div_reg = div_reg;
			best_parent = p_idx;
			FUNC11("Best parent so far %s (%d) with best freq at "
			    "%ju\n", FUNC5(p_clk), p_idx, best);
		}
	}

	*stop = 1;
	if (best_div == 0)
		return (ERANGE);

	if ((best < *fout) && ((flags & CLK_SET_ROUND_DOWN) == 0))
		return (ERANGE);

	if ((best > *fout) && ((flags & CLK_SET_ROUND_UP) == 0)) {
		return (ERANGE);
	}

	if ((flags & CLK_SET_DRYRUN) != 0) {
		*fout = best;
		return (0);
	}

	p_idx = FUNC6(clk);
	if (p_idx != best_parent) {
		FUNC11("Switching parent index from %d to %d\n", p_idx,
		    best_parent);
		FUNC10(clk, best_parent);
	}

	FUNC11("Setting divider to %d (reg: %d)\n", best_div, best_div_reg);
	FUNC11(" div_mask: 0x%X, div_shift: %d\n", sc->div_mask,
	    sc->div_shift);

	FUNC0(clk);
	val = best_div_reg << sc->div_shift;
	val |= sc->div_mask << RK_CLK_COMPOSITE_MASK_SHIFT;
	FUNC11("Write: muxdiv_offset=%x, val=%x\n", sc->muxdiv_offset, val);
	FUNC2(clk, sc->muxdiv_offset, val);
	FUNC1(clk);

	*fout = best;
	return (0);
}