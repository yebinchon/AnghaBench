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
typedef  int uint32_t ;
struct periph_sc {int flags; int mux; int /*<<< orphan*/  base_reg; } ;
struct clknode {int dummy; } ;

/* Variables and functions */
 int DCF_HAVE_MUX ; 
 int DCF_IS_AUDIO ; 
 int DCF_IS_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct periph_sc*) ; 
 int /*<<< orphan*/  FUNC1 (struct periph_sc*) ; 
 int ENXIO ; 
 int PERLCK_AMUX_DIS ; 
 int PERLCK_AMUX_SHIFT ; 
 int PERLCK_MUX_MASK ; 
 int PERLCK_MUX_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct periph_sc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct periph_sc*,int /*<<< orphan*/ ,int) ; 
 struct periph_sc* FUNC4 (struct clknode*) ; 

__attribute__((used)) static int
FUNC5(struct clknode *clk, int idx)
{
	struct periph_sc *sc;
	uint32_t reg;


	sc = FUNC4(clk);
	if (!(sc->flags & DCF_HAVE_MUX))
		return (ENXIO);

	sc->mux = idx;
	FUNC0(sc);
	FUNC2(sc, sc->base_reg, &reg);
	reg &= ~(PERLCK_MUX_MASK << PERLCK_MUX_SHIFT);
	if ((sc->flags & DCF_IS_MASK) == DCF_IS_AUDIO) {
		reg &= ~PERLCK_AMUX_DIS;
		reg &= ~(PERLCK_MUX_MASK << PERLCK_AMUX_SHIFT);

		if (idx <= 7) {
			reg |= idx << PERLCK_MUX_SHIFT;
		} else {
			reg |= 7 << PERLCK_MUX_SHIFT;
			reg |= (idx - 8) << PERLCK_AMUX_SHIFT;
		}
	} else {
		reg |= idx << PERLCK_MUX_SHIFT;
	}
	FUNC3(sc, sc->base_reg, reg);
	FUNC1(sc);

	return(0);
}