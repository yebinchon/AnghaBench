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
struct aw_clk_np_sc {int flags; int lock_retries; int lock_shift; int /*<<< orphan*/  offset; TYPE_1__ p; TYPE_1__ n; } ;

/* Variables and functions */
 int AW_CLK_HAS_LOCK ; 
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
 scalar_t__ FUNC6 (struct aw_clk_np_sc*,scalar_t__,scalar_t__*,int*,int*) ; 
 struct aw_clk_np_sc* FUNC7 (struct clknode*) ; 

__attribute__((used)) static int
FUNC8(struct clknode *clk, uint64_t fparent, uint64_t *fout,
    int flags, int *stop)
{
	struct aw_clk_np_sc *sc;
	uint64_t cur, best;
	uint32_t val, n, p, best_n, best_p;
	int retry;

	sc = FUNC7(clk);

	best = cur = 0;

	best = FUNC6(sc, fparent, fout,
	    &best_n, &best_p);

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

	FUNC1(clk);
	FUNC3(clk, sc->offset, &val);

	n = FUNC5(&sc->n, best_n);
	p = FUNC5(&sc->p, best_p);
	val &= ~sc->n.mask;
	val &= ~sc->p.mask;
	val |= n << sc->n.shift;
	val |= p << sc->p.shift;

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