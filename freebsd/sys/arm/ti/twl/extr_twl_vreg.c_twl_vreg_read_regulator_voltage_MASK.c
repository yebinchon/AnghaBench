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
struct twl_regulator_entry {int* supp_voltages; int num_supp_voltages; int fixed_voltage; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct twl_vreg_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct twl_vreg_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct twl_vreg_softc*) ; 
 int /*<<< orphan*/  TWL_VREG_VSEL ; 
 int UNDF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int twl_vreg_debug ; 
 int FUNC5 (struct twl_vreg_softc*,struct twl_regulator_entry*,int*) ; 
 int FUNC6 (struct twl_vreg_softc*,struct twl_regulator_entry*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC7(struct twl_vreg_softc *sc,
    struct twl_regulator_entry *regulator, int *millivolts)
{
	int err;
	int en = 0;
	int xlocked;
	uint8_t vsel;
	
	FUNC0(sc);
	
	/* Need to upgrade the lock because checking enabled state and voltage
	 * should be atomic.
	 */
	xlocked = FUNC4(&sc->sc_sx);
	if (!xlocked)
		FUNC2(sc);


	/* Check if the regulator is currently enabled */
	err = FUNC5(sc, regulator, &en);
	if (err)
		goto done;

	*millivolts = 0;	
	if (!en)
		goto done;


	/* Not all voltages are adjustable */
	if (regulator->supp_voltages == NULL || !regulator->num_supp_voltages) {
		*millivolts = regulator->fixed_voltage;
		goto done;
	}

	/* For variable voltages read the voltage register */
	err = FUNC6(sc, regulator, TWL_VREG_VSEL, &vsel);
	if (err)
		goto done;

	vsel &= (regulator->num_supp_voltages - 1);
	if (regulator->supp_voltages[vsel] == UNDF) {
		err = EINVAL;
		goto done;
	}

	*millivolts = regulator->supp_voltages[vsel];

done:
	if (!xlocked)
		FUNC1(sc);
	
	if ((twl_vreg_debug > 1) && !err)
		FUNC3(sc->sc_dev, "%s : reading voltage is %dmV (vsel: 0x%x)\n",
		    regulator->name, *millivolts, vsel);

	return (err);
}