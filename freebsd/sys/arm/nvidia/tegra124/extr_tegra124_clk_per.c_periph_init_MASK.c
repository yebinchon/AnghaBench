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
struct periph_sc {int flags; int mux; int divider; int div_mask; int /*<<< orphan*/  base_reg; } ;
struct clknode {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int DCF_HAVE_DIV ; 
 int DCF_HAVE_ENA ; 
 int DCF_HAVE_MUX ; 
 int DCF_IS_AUDIO ; 
 int DCF_IS_MASK ; 
 int DCF_IS_UART ; 
 int /*<<< orphan*/  FUNC0 (struct periph_sc*) ; 
 int /*<<< orphan*/  FUNC1 (struct periph_sc*) ; 
 int /*<<< orphan*/  FUNC2 (struct periph_sc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PERLCK_AMUX_DIS ; 
 int PERLCK_AMUX_SHIFT ; 
 int /*<<< orphan*/  PERLCK_ENA_MASK ; 
 int PERLCK_MUX_MASK ; 
 int PERLCK_MUX_SHIFT ; 
 int PERLCK_UDIV_DIS ; 
 int /*<<< orphan*/  FUNC3 (struct periph_sc*,int /*<<< orphan*/ ,int*) ; 
 struct periph_sc* FUNC4 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC5 (struct clknode*,int) ; 

__attribute__((used)) static int
FUNC6(struct clknode *clk, device_t dev)
{
	struct periph_sc *sc;
	uint32_t reg;
	sc = FUNC4(clk);

	FUNC0(sc);
	if (sc->flags & DCF_HAVE_ENA)
		FUNC2(sc, sc->base_reg, PERLCK_ENA_MASK, PERLCK_ENA_MASK);

	FUNC3(sc, sc->base_reg, &reg);
	FUNC1(sc);

	/* Stnadard mux. */
	if (sc->flags & DCF_HAVE_MUX)
		sc->mux = (reg >> PERLCK_MUX_SHIFT) & PERLCK_MUX_MASK;
	else
		sc->mux = 0;
	if (sc->flags & DCF_HAVE_DIV)
		sc->divider = (reg & sc->div_mask) + 2;
	else
		sc->divider = 1;
	if ((sc->flags & DCF_IS_MASK) == DCF_IS_UART) {
		if (!(reg & PERLCK_UDIV_DIS))
			sc->divider = 2;
	}

	/* AUDIO MUX */
	if ((sc->flags & DCF_IS_MASK) == DCF_IS_AUDIO) {
		if (!(reg & PERLCK_AMUX_DIS) && (sc->mux == 7)) {
			sc->mux = 8 +
			    ((reg >> PERLCK_AMUX_SHIFT) & PERLCK_MUX_MASK);
		}
	}
	FUNC5(clk, sc->mux);
	return(0);
}