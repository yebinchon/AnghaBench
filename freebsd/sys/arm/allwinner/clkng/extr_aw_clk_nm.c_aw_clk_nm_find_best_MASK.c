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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int flags; } ;
struct aw_clk_nm_sc {TYPE_1__ m; TYPE_1__ n; } ;

/* Variables and functions */
 int AW_CLK_FACTOR_POWER_OF_TWO ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static uint64_t
FUNC3(struct aw_clk_nm_sc *sc, uint64_t fparent, uint64_t *fout,
    uint32_t *factor_n, uint32_t *factor_m)
{
	uint64_t cur, best;
	uint32_t m, n, max_m, max_n, min_m, min_n;

	*factor_n = *factor_m = 0;

	max_m = FUNC1(&sc->m);
	max_n = FUNC1(&sc->n);
	min_m = FUNC2(&sc->m);
	min_n = FUNC2(&sc->n);

	for (m = min_m; m <= max_m; ) {
		for (n = min_m; n <= max_n; ) {
			cur = fparent / n / m;
			if (FUNC0(*fout - cur) < FUNC0(*fout - best)) {
				best = cur;
				*factor_n = n;
				*factor_m = m;
			}

			if ((sc->n.flags & AW_CLK_FACTOR_POWER_OF_TWO) != 0)
				n <<= 1;
			else
				n++;
		}
		if ((sc->m.flags & AW_CLK_FACTOR_POWER_OF_TWO) != 0)
			m <<= 1;
		else
			m++;
	}

	return (best);
}