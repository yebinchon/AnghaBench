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
struct twl_vreg_softc {int /*<<< orphan*/  sc_pdev; int /*<<< orphan*/  sc_sx; } ;
struct twl_regulator_entry {int dummy; } ;

/* Variables and functions */
 int TWL4030_P1_GRP ; 
 int TWL6030_P1_GRP ; 
 int /*<<< orphan*/  FUNC0 (struct twl_vreg_softc*) ; 
 int /*<<< orphan*/  TWL_VREG_GRP ; 
 int /*<<< orphan*/  FUNC1 (struct twl_vreg_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct twl_vreg_softc*) ; 
 int /*<<< orphan*/  TWL_VREG_STATE ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct twl_vreg_softc*,struct twl_regulator_entry*,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (struct twl_vreg_softc*,struct twl_regulator_entry*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct twl_vreg_softc *sc,
    struct twl_regulator_entry *regulator)
{
	int err;
	uint8_t grp;
	int xlocked;

	FUNC0(sc);

	xlocked = FUNC3(&sc->sc_sx);
	if (!xlocked)
		FUNC2(sc);


	err = FUNC7(sc, regulator, TWL_VREG_GRP, &grp);
	if (err)
		goto done;

	/* Enable the regulator by ensuring it's in the application power group
	 * and is in the "on" state.
	 */
	if (FUNC4(sc->sc_pdev)) {

		/* On the TWL4030 we just need to ensure the regulator is in the right
		 * power domain, don't need to turn on explicitly like TWL6030.
		 */
		grp |= TWL4030_P1_GRP;
		err = FUNC8(sc, regulator, TWL_VREG_GRP, grp);

	} else if (FUNC6(sc->sc_pdev) || FUNC5(sc->sc_pdev)) {

		if (FUNC6(sc->sc_pdev) && !(grp & TWL6030_P1_GRP)) {
			grp |= TWL6030_P1_GRP;
			err = FUNC8(sc, regulator, TWL_VREG_GRP, grp);
			if (err)
				goto done;
		}

		/* Write the resource state to "ON" */
		err = FUNC8(sc, regulator, TWL_VREG_STATE, (grp << 5) | 0x01);
	}

done:
	if (!xlocked)
		FUNC1(sc);
	
	return (err);
}