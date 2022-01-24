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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct aw_clk_nmm_sc {int /*<<< orphan*/  m1; int /*<<< orphan*/  m0; int /*<<< orphan*/  n; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t
FUNC3(struct aw_clk_nmm_sc *sc, uint64_t fparent, uint64_t *fout,
  uint32_t *factor_n, uint32_t *factor_m0, uint32_t *factor_m1)
{
	uint64_t cur, best;
	uint32_t n, m0, m1;
	uint32_t max_n, max_m0, max_m1;
	uint32_t min_n, min_m0, min_m1;

	*factor_n = *factor_m0 = *factor_m1 = 0;

	max_n = FUNC1(&sc->n);
	min_n = FUNC2(&sc->n);
	max_m0 = FUNC1(&sc->m0);
	min_m0 = FUNC2(&sc->m0);
	max_m1 = FUNC1(&sc->m1);
	min_m1 = FUNC2(&sc->m1);

	for (m0 = min_m0; m0 <= max_m0; ) {
		for (m1 = min_m1; m1 <= max_m1; ) {
			for (n = min_n; n <= max_n; ) {
				cur = fparent * n / m0 / m1;
				if (FUNC0(*fout - cur) < FUNC0(*fout - best)) {
					best = cur;
					*factor_n = n;
					*factor_m0 = m0;
					*factor_m1 = m1;
				}
				n++;
			}
			m1++;
		}
		m0++;
	}

	return (best);
}