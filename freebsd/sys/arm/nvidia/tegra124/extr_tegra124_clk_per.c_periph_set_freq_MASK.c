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
struct periph_sc {int flags; int div_f_width; int divider; int /*<<< orphan*/  div_mask; int /*<<< orphan*/  base_reg; } ;
struct clknode {int dummy; } ;

/* Variables and functions */
 int CLK_SET_DRYRUN ; 
 int CLK_SET_ROUND_DOWN ; 
 int CLK_SET_ROUND_UP ; 
 int DCF_HAVE_DIV ; 
 int /*<<< orphan*/  FUNC0 (struct periph_sc*) ; 
 int /*<<< orphan*/  FUNC1 (struct periph_sc*) ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC2 (struct periph_sc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct periph_sc* FUNC3 (struct clknode*) ; 

__attribute__((used)) static int
FUNC4(struct clknode *clk, uint64_t fin, uint64_t *fout,
   int flags, int *stop)
{
	struct periph_sc *sc;
	uint64_t tmp, divider;

	sc = FUNC3(clk);
	if (!(sc->flags & DCF_HAVE_DIV)) {
		*stop = 0;
		return (0);
	}

	tmp = fin << sc->div_f_width;
	divider = tmp / *fout;
	if ((tmp % *fout) != 0)
		divider++;

	if (divider < (1 << sc->div_f_width))
		 divider = 1 << (sc->div_f_width - 1);

	if (flags & CLK_SET_DRYRUN) {
		if (((flags & (CLK_SET_ROUND_UP | CLK_SET_ROUND_DOWN)) == 0) &&
		    (*fout != (tmp / divider)))
			return (ERANGE);
	} else {
		FUNC0(sc);
		FUNC2(sc, sc->base_reg, sc->div_mask,
		    (divider - (1 << sc->div_f_width)));
		FUNC1(sc);
		sc->divider = divider;
	}
	*fout = tmp / divider;
	*stop = 1;
	return (0);
}