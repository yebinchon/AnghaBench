#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct clknode {int dummy; } ;
struct TYPE_3__ {scalar_t__ mask; scalar_t__ shift; } ;
struct aw_clk_nkmp_sc {int flags; int lock_retries; int lock_shift; int /*<<< orphan*/  offset; TYPE_1__ p; TYPE_1__ m; TYPE_1__ k; TYPE_1__ n; } ;

/* Variables and functions */
 int AW_CLK_HAS_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC2 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC3 (struct clknode*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct clknode*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(struct clknode *clk, struct aw_clk_nkmp_sc *sc,
    uint32_t factor_n, uint32_t factor_k, uint32_t factor_m, uint32_t factor_p)
{
	uint32_t val, n, k, m, p;
	int retry;

	FUNC1(clk);
	FUNC3(clk, sc->offset, &val);

	n = FUNC6(val, &sc->n);
	k = FUNC6(val, &sc->k);
	m = FUNC6(val, &sc->m);
	p = FUNC6(val, &sc->p);

	if (p < factor_p) {
		val &= ~sc->p.mask;
		val |= FUNC5(&sc->p, factor_p) << sc->p.shift;
		FUNC4(clk, sc->offset, val);
		FUNC0(2000);
	}

	if (m < factor_m) {
		val &= ~sc->m.mask;
		val |= FUNC5(&sc->m, factor_m) << sc->m.shift;
		FUNC4(clk, sc->offset, val);
		FUNC0(2000);
	}

	val &= ~sc->n.mask;
	val &= ~sc->k.mask;
	val |= FUNC5(&sc->n, factor_n) << sc->n.shift;
	val |= FUNC5(&sc->k, factor_k) << sc->k.shift;
	FUNC4(clk, sc->offset, val);
	FUNC0(2000);

	if (m > factor_m) {
		val &= ~sc->m.mask;
		val |= FUNC5(&sc->m, factor_m) << sc->m.shift;
		FUNC4(clk, sc->offset, val);
		FUNC0(2000);
	}

	if (p > factor_p) {
		val &= ~sc->p.mask;
		val |= FUNC5(&sc->p, factor_p) << sc->p.shift;
		FUNC4(clk, sc->offset, val);
		FUNC0(2000);
	}

	if ((sc->flags & AW_CLK_HAS_LOCK) != 0) {
		for (retry = 0; retry < sc->lock_retries; retry++) {
			FUNC3(clk, sc->offset, &val);
			if ((val & (1 << sc->lock_shift)) != 0)
				break;
			FUNC0(1000);
		}
	}

	FUNC2(clk);
}