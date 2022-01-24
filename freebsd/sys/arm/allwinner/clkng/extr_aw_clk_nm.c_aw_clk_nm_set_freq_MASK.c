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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct clknode {int dummy; } ;
struct TYPE_2__ {int mask; int shift; } ;
struct aw_clk_nm_sc {int flags; int lock_retries; int lock_shift; int /*<<< orphan*/  offset; TYPE_1__ m; TYPE_1__ n; } ;

/* Variables and functions */
 int AW_CLK_HAS_LOCK ; 
 int AW_CLK_REPARENT ; 
 int CLK_SET_DRYRUN ; 
 int CLK_SET_ROUND_DOWN ; 
 int CLK_SET_ROUND_UP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*) ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC3 (struct clknode*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct clknode*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 scalar_t__ FUNC6 (struct aw_clk_nm_sc*,scalar_t__,scalar_t__*,int*,int*) ; 
 struct clknode* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct clknode*,scalar_t__*) ; 
 struct clknode* FUNC9 (struct clknode*) ; 
 int FUNC10 (struct clknode*) ; 
 char** FUNC11 (struct clknode*) ; 
 int FUNC12 (struct clknode*) ; 
 struct aw_clk_nm_sc* FUNC13 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC14 (struct clknode*,int) ; 

__attribute__((used)) static int
FUNC15(struct clknode *clk, uint64_t fparent, uint64_t *fout,
    int flags, int *stop)
{
	struct aw_clk_nm_sc *sc;
	struct clknode *p_clk;
	const char **p_names;
	uint64_t cur, best;
	uint32_t val, m, n, best_m, best_n;
	int p_idx, best_parent, retry;

	sc = FUNC13(clk);

	best = cur = 0;
	best_parent = 0;

	if ((sc->flags & AW_CLK_REPARENT) != 0) {
		p_names = FUNC11(clk);
		for (p_idx = 0; p_idx != FUNC12(clk); p_idx++) {
			p_clk = FUNC7(p_names[p_idx]);
			FUNC8(p_clk, &fparent);

			cur = FUNC6(sc, fparent, fout, &n, &m);
			if ((*fout - cur) < (*fout - best)) {
				best = cur;
				best_parent = p_idx;
				best_n = n;
				best_m = m;
			}
		}

		p_idx = FUNC10(clk);
		p_clk = FUNC9(clk);
		FUNC8(p_clk, &fparent);
	} else {
		best = FUNC6(sc, fparent, fout,
		    &best_n, &best_m);
	}

	if ((flags & CLK_SET_DRYRUN) != 0) {
		*fout = best;
		*stop = 1;
		return (0);
	}

	if ((best < *fout) &&
	  ((flags & CLK_SET_ROUND_DOWN) == 0)) {
		*stop = 1;
		return (ERANGE);
	}
	if ((best > *fout) &&
	  ((flags & CLK_SET_ROUND_UP) == 0)) {
		*stop = 1;
		return (ERANGE);
	}

	if ((sc->flags & AW_CLK_REPARENT) != 0 && p_idx != best_parent)
		FUNC14(clk, best_parent);

	FUNC1(clk);
	FUNC3(clk, sc->offset, &val);

	n = FUNC5(&sc->n, best_n);
	m = FUNC5(&sc->m, best_m);
	val &= ~sc->n.mask;
	val &= ~sc->m.mask;
	val |= n << sc->n.shift;
	val |= m << sc->m.shift;

	FUNC4(clk, sc->offset, val);
	FUNC2(clk);

	if ((sc->flags & AW_CLK_HAS_LOCK) != 0) {
		for (retry = 0; retry < sc->lock_retries; retry++) {
			FUNC3(clk, sc->offset, &val);
			if ((val & (1 << sc->lock_shift)) != 0)
				break;
			FUNC0(1000);
		}
	}

	*fout = best;
	*stop = 1;

	return (0);
}