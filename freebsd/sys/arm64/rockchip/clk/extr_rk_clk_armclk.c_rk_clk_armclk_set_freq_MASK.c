#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct rk_clk_armclk_sc {size_t main_parent; int nrates; int div_shift; int div_mask; char* muxdiv_offset; TYPE_1__* rates; } ;
struct clknode {int dummy; } ;
struct TYPE_2__ {int freq; int div; } ;

/* Variables and functions */
 int CLK_SET_DRYRUN ; 
 int /*<<< orphan*/  FUNC0 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int RK_ARMCLK_WRITE_MASK_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*,char*,int) ; 
 struct clknode* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct clknode*,int*) ; 
 char* FUNC5 (struct clknode*) ; 
 char** FUNC6 (struct clknode*) ; 
 struct rk_clk_armclk_sc* FUNC7 (struct clknode*) ; 
 int FUNC8 (struct clknode*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct clknode*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC12(struct clknode *clk, uint64_t fparent, uint64_t *fout,
    int flags, int *stop)
{
	struct rk_clk_armclk_sc *sc;
	struct clknode *p_main;
	const char **p_names;
	uint64_t best = 0, best_p = 0;
	uint32_t div = 0, val = 0;
	int err, i, rate = 0;

	sc = FUNC7(clk);

	FUNC10("Finding best parent/div for target freq of %ju\n", *fout);
	p_names = FUNC6(clk);
	p_main = FUNC3(p_names[sc->main_parent]);

	for (i = 0; i < sc->nrates; i++) {
		if (sc->rates[i].freq == *fout) {
			best = sc->rates[i].freq;
			div = sc->rates[i].div;
			best_p = best * div;
			rate = i;
			FUNC10("Best parent %s (%d) with best freq at %ju\n",
			    FUNC5(p_main),
			    sc->main_parent,
			    best);
			break;
		}
	}

	if (rate == sc->nrates)
		return (0);

	if ((flags & CLK_SET_DRYRUN) != 0) {
		*fout = best;
		*stop = 1;
		return (0);
	}

	FUNC10("Changing parent (%s) freq to %ju\n", FUNC5(p_main),
	    best_p);
	err = FUNC8(p_main, best_p, 0, 1);
	if (err != 0)
		FUNC11("Cannot set %s to %ju\n",
		    FUNC5(p_main),
		    best_p);

	FUNC9(clk, sc->main_parent);

	FUNC4(p_main, &best_p);
	FUNC10("main parent freq at %ju\n", best_p);
	FUNC0(clk);
	val |= (div - 1) << sc->div_shift;
	val |= sc->div_mask << RK_ARMCLK_WRITE_MASK_SHIFT;
	FUNC10("Write: muxdiv_offset=%x, val=%x\n", sc->muxdiv_offset, val);
	FUNC2(clk, sc->muxdiv_offset, val);
	FUNC1(clk);

	*fout = best;
	*stop = 1;

	return (0);
}