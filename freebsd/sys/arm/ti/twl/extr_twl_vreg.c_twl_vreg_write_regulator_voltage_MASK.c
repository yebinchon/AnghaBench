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
struct twl_vreg_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_sx; } ;
struct twl_regulator_entry {scalar_t__ num_supp_voltages; int fixed_voltage; int /*<<< orphan*/  name; int /*<<< orphan*/ * supp_voltages; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct twl_vreg_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct twl_vreg_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct twl_vreg_softc*) ; 
 int /*<<< orphan*/  TWL_VREG_VSEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int twl_vreg_debug ; 
 int FUNC5 (struct twl_vreg_softc*,struct twl_regulator_entry*) ; 
 int FUNC6 (struct twl_vreg_softc*,struct twl_regulator_entry*) ; 
 int FUNC7 (struct twl_vreg_softc*,struct twl_regulator_entry*,int,int*) ; 
 int FUNC8 (struct twl_vreg_softc*,struct twl_regulator_entry*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct twl_vreg_softc *sc,
    struct twl_regulator_entry *regulator, int millivolts)
{
	int err;
	uint8_t vsel;
	int xlocked;

	FUNC0(sc);

	/* If millivolts is zero then we simply disable the output */
	if (millivolts == 0)
		return (FUNC5(sc, regulator));

	/* If the regulator has a fixed voltage then check the setting matches
	 * and simply enable.
	 */
	if (regulator->supp_voltages == NULL || regulator->num_supp_voltages == 0) {
		if (millivolts != regulator->fixed_voltage)
			return (EINVAL);

		return (FUNC6(sc, regulator));
	}

	/* Get the VSEL value for the given voltage */
	err = FUNC7(sc, regulator, millivolts, &vsel);
	if (err)
		return (err);

	
	/* Need to upgrade because writing the voltage and enabling should be atomic */
	xlocked = FUNC4(&sc->sc_sx);
	if (!xlocked)
		FUNC2(sc);


	/* Set voltage and enable (atomically) */
	err = FUNC8(sc, regulator, TWL_VREG_VSEL, (vsel & 0x1f));
	if (!err) {
		err = FUNC6(sc, regulator);
	}

	if (!xlocked)
		FUNC1(sc);

	if ((twl_vreg_debug > 1) && !err)
		FUNC3(sc->sc_dev, "%s : setting voltage to %dmV (vsel: 0x%x)\n",
		    regulator->name, millivolts, vsel);

	return (err);
}