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
struct aw_clk_mipi_sc {int /*<<< orphan*/  m; int /*<<< orphan*/  k; int /*<<< orphan*/  n; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t
FUNC2(struct aw_clk_mipi_sc *sc, uint64_t fparent, uint64_t *fout,
    uint32_t *factor_k, uint32_t *factor_m, uint32_t *factor_n)
{
	uint64_t cur, best;
	uint32_t n, k, m;

	best = 0;
	*factor_n = 0;
	*factor_k = 0;
	*factor_m = 0;

	for (n = FUNC1(&sc->n); n <= FUNC0(&sc->n); ) {
		for (k = FUNC1(&sc->k); k <= FUNC0(&sc->k); ) {
			for (m = FUNC1(&sc->m); m <= FUNC0(&sc->m); ) {
				cur = (fparent * n * k) / m;
				if ((*fout - cur) < (*fout - best)) {
					best = cur;
					*factor_n = n;
					*factor_k = k;
					*factor_m = m;
				}
				if (best == *fout)
					return (best);
					m++;
			}
				k++;
		}
			n++;
	}

	return best;
}