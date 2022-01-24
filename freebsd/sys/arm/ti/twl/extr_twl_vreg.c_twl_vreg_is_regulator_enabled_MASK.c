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
 int EINVAL ; 
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

__attribute__((used)) static int
FUNC8(struct twl_vreg_softc *sc,
	struct twl_regulator_entry *regulator, int *enabled)
{
	int err;
	uint8_t grp;
	uint8_t state;
	int xlocked;
	
	if (enabled == NULL)
		return (EINVAL);

	FUNC0(sc);

	xlocked = FUNC3(&sc->sc_sx);
	if (!xlocked)
		FUNC2(sc);

	/* The status reading is different for the different devices */
	if (FUNC4(sc->sc_pdev)) {

		err = FUNC7(sc, regulator, TWL_VREG_GRP, &state);
		if (err)
			goto done;

		*enabled = (state & TWL4030_P1_GRP);

	} else if (FUNC6(sc->sc_pdev) || FUNC5(sc->sc_pdev)) {

		/* Check the regulator is in the application group */
		if (FUNC6(sc->sc_pdev)) {
			err = FUNC7(sc, regulator, TWL_VREG_GRP, &grp);
			if (err)
				goto done;

			if (!(grp & TWL6030_P1_GRP)) {
				*enabled = 0; /* disabled */
				goto done;
			}
		}

		/* Read the application mode state and verify it's ON */
		err = FUNC7(sc, regulator, TWL_VREG_STATE, &state);
		if (err)
			goto done;

		*enabled = ((state & 0x0C) == 0x04);

	} else {
		err = EINVAL;
	}

done:
	if (!xlocked)
		FUNC1(sc);

	return (err);
}