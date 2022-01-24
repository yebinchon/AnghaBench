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
struct aw_clk_nkmp_sc {int flags; int update_shift; int lock_retries; int lock_shift; int /*<<< orphan*/  offset; TYPE_1__ p; TYPE_1__ m; TYPE_1__ k; TYPE_1__ n; } ;

/* Variables and functions */
 int AW_CLK_HAS_LOCK ; 
 int AW_CLK_HAS_UPDATE ; 
 int AW_CLK_SCALE_CHANGE ; 
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
 scalar_t__ FUNC6 (struct aw_clk_nkmp_sc*,scalar_t__,scalar_t__*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct clknode*,struct aw_clk_nkmp_sc*,int,int,int,int) ; 
 struct aw_clk_nkmp_sc* FUNC8 (struct clknode*) ; 

__attribute__((used)) static int
FUNC9(struct clknode *clk, uint64_t fparent, uint64_t *fout,
    int flags, int *stop)
{
	struct aw_clk_nkmp_sc *sc;
	uint64_t best;
	uint32_t val, best_n, best_k, best_m, best_p;
	int retry;

	sc = FUNC8(clk);

	best = FUNC6(sc, fparent, fout,
	    &best_n, &best_k, &best_m, &best_p);
	if ((flags & CLK_SET_DRYRUN) != 0) {
		*fout = best;
		*stop = 1;
		return (0);
	}

	if ((best < *fout) &&
	  ((flags & CLK_SET_ROUND_DOWN) != 0)) {
		*stop = 1;
		return (ERANGE);
	}
	if ((best > *fout) &&
	  ((flags & CLK_SET_ROUND_UP) != 0)) {
		*stop = 1;
		return (ERANGE);
	}

	if ((sc->flags & AW_CLK_SCALE_CHANGE) != 0)
		FUNC7(clk, sc,
		    best_n, best_k, best_m, best_p);
	else {
		FUNC1(clk);
		FUNC3(clk, sc->offset, &val);
		val &= ~sc->n.mask;
		val &= ~sc->k.mask;
		val &= ~sc->m.mask;
		val &= ~sc->p.mask;
		val |= FUNC5(&sc->n, best_n) << sc->n.shift;
		val |= FUNC5(&sc->k, best_k) << sc->k.shift;
		val |= FUNC5(&sc->m, best_m) << sc->m.shift;
		val |= FUNC5(&sc->p, best_p) << sc->p.shift;
		FUNC4(clk, sc->offset, val);
		FUNC0(2000);
		FUNC2(clk);

		if ((sc->flags & AW_CLK_HAS_UPDATE) != 0) {
			FUNC1(clk);
			FUNC3(clk, sc->offset, &val);
			val |= 1 << sc->update_shift;
			FUNC4(clk, sc->offset, val);
			FUNC0(2000);
			FUNC2(clk);
		}

		if ((sc->flags & AW_CLK_HAS_LOCK) != 0) {
			for (retry = 0; retry < sc->lock_retries; retry++) {
				FUNC3(clk, sc->offset, &val);
				if ((val & (1 << sc->lock_shift)) != 0)
					break;
				FUNC0(1000);
			}
		}
	}

	*fout = best;
	*stop = 1;

	return (0);
}