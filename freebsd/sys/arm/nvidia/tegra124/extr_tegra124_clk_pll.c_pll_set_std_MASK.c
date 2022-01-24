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
struct mnp_bits {int m_width; int n_width; int p_width; int /*<<< orphan*/  p_shift; } ;
struct pll_sc {scalar_t__ iddq_reg; int lock_enable; int /*<<< orphan*/  misc_reg; int /*<<< orphan*/  base_reg; int /*<<< orphan*/  iddq_mask; struct mnp_bits mnp_bits; } ;

/* Variables and functions */
 int CLK_SET_DRYRUN ; 
 int CLK_SET_ROUND_DOWN ; 
 int CLK_SET_ROUND_UP ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (struct pll_sc*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLL_BASE_DIVM_SHIFT ; 
 int /*<<< orphan*/  PLL_BASE_DIVN_SHIFT ; 
 int PLL_BASE_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct pll_sc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pll_sc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct pll_sc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pll_sc*) ; 
 int /*<<< orphan*/  FUNC5 (struct pll_sc*) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct pll_sc*) ; 

__attribute__((used)) static int
FUNC8(struct pll_sc *sc, uint64_t fin, uint64_t *fout, int flags,
    uint32_t m, uint32_t n, uint32_t p)
{
	uint32_t reg;
	struct mnp_bits *mnp_bits;
	int rv;

	mnp_bits = &sc->mnp_bits;
	if (m >= (1 << mnp_bits->m_width))
		return (ERANGE);
	if (n >= (1 << mnp_bits->n_width))
		return (ERANGE);
	if (FUNC3(sc, p) >= (1 << mnp_bits->p_width))
		return (ERANGE);

	if (flags & CLK_SET_DRYRUN) {
		if (((flags & (CLK_SET_ROUND_UP | CLK_SET_ROUND_DOWN)) == 0) &&
		    (*fout != (((fin / m) * n) /p)))
			return (ERANGE);

		*fout = ((fin / m) * n) /p;

		return (0);
	}

	FUNC4(sc);

	/* take pll out of IDDQ */
	if (sc->iddq_reg != 0)
		FUNC0(sc, sc->iddq_reg, sc->iddq_mask, 0);

	FUNC1(sc, sc->base_reg, &reg);
	reg = FUNC6(reg, m, PLL_BASE_DIVM_SHIFT, mnp_bits->m_width);
	reg = FUNC6(reg, n, PLL_BASE_DIVN_SHIFT, mnp_bits->n_width);
	reg = FUNC6(reg, FUNC3(sc, p), mnp_bits->p_shift,
	    mnp_bits->p_width);
	FUNC2(sc, sc->base_reg, reg);

	/* Enable PLL. */
	FUNC1(sc, sc->base_reg, &reg);
	reg |= PLL_BASE_ENABLE;
	FUNC2(sc, sc->base_reg, reg);

	/* Enable lock detection. */
	FUNC1(sc, sc->misc_reg, &reg);
	reg |= sc->lock_enable;
	FUNC2(sc, sc->misc_reg, reg);

	rv = FUNC7(sc);
	if (rv != 0) {
		/* Disable PLL */
		FUNC1(sc, sc->base_reg, &reg);
		reg &= ~PLL_BASE_ENABLE;
		FUNC2(sc, sc->base_reg, reg);
		return (rv);
	}
	FUNC1(sc, sc->misc_reg, &reg);

	FUNC5(sc);
	*fout = ((fin / m) * n) / p;
	return 0;
}