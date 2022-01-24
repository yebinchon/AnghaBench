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
typedef  int uint8_t ;
struct twl_clks_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_pdev; int /*<<< orphan*/  sc_sx; } ;
struct twl_clk_entry {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int TWL4030_P1_GRP ; 
 int TWL4030_P2_GRP ; 
 int TWL4030_P3_GRP ; 
 int TWL6030_P1_GRP ; 
 int TWL6030_P2_GRP ; 
 int TWL6030_P3_GRP ; 
 int /*<<< orphan*/  FUNC0 (struct twl_clks_softc*) ; 
 int /*<<< orphan*/  TWL_CLKS_GRP ; 
 int /*<<< orphan*/  FUNC1 (struct twl_clks_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct twl_clks_softc*) ; 
 int /*<<< orphan*/  TWL_CLKS_STATE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int twl_clks_debug ; 
 int FUNC5 (struct twl_clks_softc*,struct twl_clk_entry*,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (struct twl_clks_softc*,struct twl_clk_entry*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct twl_clks_softc *sc, struct twl_clk_entry *clk,
	int enable)
{
	int xlocked;
	int err;
	uint8_t grp;

	FUNC0(sc);

	/* Upgrade the lock to exclusive because about to perform read-mod-write */
	xlocked = FUNC4(&sc->sc_sx);
	if (!xlocked)
		FUNC2(sc);

	err = FUNC5(sc, clk, TWL_CLKS_GRP, &grp);
	if (err)
		goto done;

	if (FUNC7(sc->sc_pdev)) {

		/* On the TWL4030 we just need to ensure the clock is in the right
		 * power domain, don't need to turn on explicitly like TWL6030.
		 */
		if (enable)
			grp |= TWL4030_P1_GRP;
		else
			grp &= ~(TWL4030_P1_GRP | TWL4030_P2_GRP | TWL4030_P3_GRP);
		
		err = FUNC6(sc, clk, TWL_CLKS_GRP, grp);

	} else if (FUNC9(sc->sc_pdev) || FUNC8(sc->sc_pdev)) {

		/* Make sure the clock belongs to at least the APP power group */
		if (FUNC9(sc->sc_pdev) && !(grp & TWL6030_P1_GRP)) {
			grp |= TWL6030_P1_GRP;
			err = FUNC6(sc, clk, TWL_CLKS_GRP, grp);
			if (err)
				goto done;
		}

		/* On TWL6030 we need to make sure we disable power for all groups */
		if (FUNC9(sc->sc_pdev))
			grp = TWL6030_P1_GRP | TWL6030_P2_GRP | TWL6030_P3_GRP;
		else
			grp = 0x00;

		/* Set the state of the clock */
		if (enable)
			err = FUNC6(sc, clk, TWL_CLKS_STATE, (grp << 5) | 0x01);
		else
			err = FUNC6(sc, clk, TWL_CLKS_STATE, (grp << 5));

	} else {
		
		err = EINVAL;
	}

done:
	if (!xlocked)
		FUNC1(sc);

	if ((twl_clks_debug > 1) && !err)
		FUNC3(sc->sc_dev, "%s : %sabled\n", clk->name,
			enable ? "en" : "dis");

	return (err);
}