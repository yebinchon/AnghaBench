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
struct super_mux_sc {int mux; int flags; int src_div2; int src_pllx; int /*<<< orphan*/  base_reg; } ;
struct clknode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_mux_sc*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_mux_sc*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_mux_sc*,int /*<<< orphan*/ ,int*) ; 
 int SMF_HAVE_DIVIDER_2 ; 
 int SUPER_MUX_LP_DIV2_BYPASS ; 
 int SUPER_MUX_MUX_WIDTH ; 
 int SUPER_MUX_STATE_IDLE ; 
 int SUPER_MUX_STATE_RUN ; 
 int /*<<< orphan*/  FUNC3 (struct super_mux_sc*,int /*<<< orphan*/ ,int) ; 
 struct super_mux_sc* FUNC4 (struct clknode*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct clknode *clk, int idx)
{

	struct super_mux_sc *sc;
	int shift, state;
	uint32_t reg, dummy;

	sc = FUNC4(clk);

	FUNC0(sc);
	FUNC2(sc, sc->base_reg, &reg);
	state = FUNC6(reg);

	if ((state != SUPER_MUX_STATE_RUN) &&
	    (state != SUPER_MUX_STATE_IDLE)) {
		FUNC5("Unexpected super mux state: %u", state);
	}
	shift = (state - 1) * SUPER_MUX_MUX_WIDTH;
	sc->mux = idx;
	if (sc->flags & SMF_HAVE_DIVIDER_2) {
		if (idx == sc->src_div2) {
			idx = sc->src_pllx;
			reg &= ~SUPER_MUX_LP_DIV2_BYPASS;
			FUNC3(sc, sc->base_reg, reg);
			FUNC2(sc, sc->base_reg, &dummy);
		} else if (idx == sc->src_pllx) {
			reg = SUPER_MUX_LP_DIV2_BYPASS;
			FUNC3(sc, sc->base_reg, reg);
			FUNC2(sc, sc->base_reg, &dummy);
		}
	}
	reg &= ~(((1 << SUPER_MUX_MUX_WIDTH) - 1) << shift);
	reg |= idx << shift;

	FUNC3(sc, sc->base_reg, reg);
	FUNC2(sc, sc->base_reg, &dummy);
	FUNC1(sc);

	return(0);
}