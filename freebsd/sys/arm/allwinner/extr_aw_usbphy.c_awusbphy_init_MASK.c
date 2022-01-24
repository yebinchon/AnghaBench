#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct awusbphy_softc {int id_det_valid; int vbus_det_valid; int /*<<< orphan*/ ** pmu; int /*<<< orphan*/ * reg; struct aw_usbphy_conf* phy_conf; int /*<<< orphan*/  vbus_det_pin; int /*<<< orphan*/  id_det_pin; int /*<<< orphan*/ * phy_ctrl; } ;
struct aw_usbphy_conf {int num_phys; } ;
typedef  int /*<<< orphan*/  regulator_t ;
typedef  int /*<<< orphan*/  pname ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  hwreset_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  clk_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compat_data ; 
 struct awusbphy_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 void* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct awusbphy_softc *sc;
	phandle_t node;
	char pname[20];
	int error, off, rid;
	regulator_t reg;
	hwreset_t rst;
	clk_t clk;

	sc = FUNC4(dev);
	node = FUNC11(dev);

	sc->phy_conf = (struct aw_usbphy_conf *)FUNC12(dev, compat_data)->ocd_data;

	/* Get phy_ctrl region */
	if (FUNC10(node, "reg-names", "phy_ctrl", &rid) != 0) {
		FUNC5(dev, "Cannot locate phy control resource\n");
		return (ENXIO);
	}
	sc->phy_ctrl = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->phy_ctrl == NULL) {
		FUNC5(dev, "Cannot allocate resource\n");
		return (ENXIO);
	}

	/* Enable clocks */
	for (off = 0; FUNC2(dev, 0, off, &clk) == 0; off++) {
		error = FUNC1(clk);
		if (error != 0) {
			FUNC5(dev, "couldn't enable clock %s\n",
			    FUNC3(clk));
			return (error);
		}
	}

	/* De-assert resets */
	for (off = 0; FUNC8(dev, 0, off, &rst) == 0; off++) {
		error = FUNC7(rst);
		if (error != 0) {
			FUNC5(dev, "couldn't de-assert reset %d\n",
			    off);
			return (error);
		}
	}

	/* Get GPIOs */
	error = FUNC6(dev, node, "usb0_id_det-gpios",
	    &sc->id_det_pin);
	if (error == 0)
		sc->id_det_valid = 1;
	error = FUNC6(dev, node, "usb0_vbus_det-gpios",
	    &sc->vbus_det_pin);
	if (error == 0)
		sc->vbus_det_valid = 1;

	sc->reg = FUNC9(sizeof(*(sc->reg)) * sc->phy_conf->num_phys, M_DEVBUF,
	    M_WAITOK | M_ZERO);
	sc->pmu = FUNC9(sizeof(*(sc->pmu)) * sc->phy_conf->num_phys, M_DEVBUF,
	    M_WAITOK | M_ZERO);
	/* Get regulators */
	for (off = 0; off < sc->phy_conf->num_phys; off++) {
		FUNC14(pname, sizeof(pname), "usb%d_vbus-supply", off);
		if (FUNC13(dev, 0, pname, &reg) == 0)
			sc->reg[off] = reg;

		FUNC14(pname, sizeof(pname), "pmu%d", off);
		if (FUNC10(node, "reg-names",
		    pname, &rid) != 0)
			continue;

		sc->pmu[off] = FUNC0(dev, SYS_RES_MEMORY, &rid,
		    RF_ACTIVE);
		if (sc->pmu[off] == NULL) {
			FUNC5(dev, "Cannot allocate resource\n");
			return (ENXIO);
		}
	}

	return (0);
}