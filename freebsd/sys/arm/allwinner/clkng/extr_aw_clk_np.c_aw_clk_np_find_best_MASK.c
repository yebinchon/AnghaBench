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
struct aw_clk_np_sc {int /*<<< orphan*/  p; int /*<<< orphan*/  n; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t
FUNC3(struct aw_clk_np_sc *sc, uint64_t fparent, uint64_t *fout,
    uint32_t *factor_n, uint32_t *factor_p)
{
	uint64_t cur, best;
	uint32_t n, p, max_n, max_p, min_n, min_p;

	*factor_n = *factor_p = 0;

	max_n = FUNC1(&sc->n);
	max_p = FUNC1(&sc->p);
	min_n = FUNC2(&sc->n);
	min_p = FUNC2(&sc->p);

	for (p = min_p; p <= max_p; ) {
		for (n = min_n; n <= max_n; ) {
			cur = fparent * n / p;
			if (FUNC0(*fout - cur) < FUNC0(*fout - best)) {
				best = cur;
				*factor_n = n;
				*factor_p = p;
			}

			n++;
		}
		p++;
	}

	return (best);
}