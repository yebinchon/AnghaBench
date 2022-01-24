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
typedef  scalar_t__ uint32_t ;
struct usbphy_softc {int phy_num; int /*<<< orphan*/ * mem_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ const FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int CTRL_CLKGATE ; 
 int /*<<< orphan*/  CTRL_CLR_REG ; 
 int CTRL_ENUTMILEVEL2 ; 
 int CTRL_ENUTMILEVEL3 ; 
 int /*<<< orphan*/  CTRL_SET_REG ; 
 int CTRL_SFTRST ; 
 int ENXIO ; 
 scalar_t__ IMX6_ANALOG_USB1_CHRG_DETECT ; 
 int IMX6_ANALOG_USB_CHRG_DETECT_N_CHK_CHRG ; 
 int IMX6_ANALOG_USB_CHRG_DETECT_N_ENABLE ; 
 int /*<<< orphan*/  PWD_REG ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct usbphy_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct usbphy_softc *sc;
	int err, regoff, rid;

	sc = FUNC3(dev);
	err = 0;

	/* Allocate bus_space resources. */
	rid = 0;
	sc->mem_res = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC4(dev, "Cannot allocate memory resources\n");
		err = ENXIO;
		goto out;
	}

	/*
	 * XXX Totally lame way to get the unit number (but not quite as lame as
	 * adding an ad-hoc property to the fdt data).  This works as long as
	 * this driver is used for imx6 only.
	 */
	const uint32_t PWD_PHY1_REG_PHYSADDR = 0x020c9000;
	if (FUNC0(sc->mem_res, 0) == PWD_PHY1_REG_PHYSADDR) {
		sc->phy_num = 0;
		regoff = 0;
	} else {
		sc->phy_num = 1;
		regoff = 0x60;
	}

	/*
	 * Based on a note in the u-boot source code, disable charger detection
	 * to avoid degrading the differential signaling on the DP line.  Note
	 * that this disables (by design) both charger detection and contact
	 * detection, because of the screwball mix of active-high and active-low
	 * bits in this register.
	 */
	FUNC5(IMX6_ANALOG_USB1_CHRG_DETECT + regoff, 
	    IMX6_ANALOG_USB_CHRG_DETECT_N_ENABLE | 
	    IMX6_ANALOG_USB_CHRG_DETECT_N_CHK_CHRG);

	FUNC5(IMX6_ANALOG_USB1_CHRG_DETECT + regoff, 
	    IMX6_ANALOG_USB_CHRG_DETECT_N_ENABLE | 
	    IMX6_ANALOG_USB_CHRG_DETECT_N_CHK_CHRG);

	/* XXX Configure the overcurrent detection here. */

	/*
	 * Turn on the phy clocks.
	 */
	FUNC6(dev);

	/*
	 * Set the software reset bit, then clear both it and the clock gate bit
	 * to bring the device out of reset with the clock running.
	 */
	FUNC2(sc->mem_res, CTRL_SET_REG, CTRL_SFTRST);
	FUNC2(sc->mem_res, CTRL_CLR_REG, CTRL_SFTRST | CTRL_CLKGATE);

	/* Set UTMI+ level 2+3 bits to enable low and full speed devices. */
	FUNC2(sc->mem_res, CTRL_SET_REG,
	    CTRL_ENUTMILEVEL2 | CTRL_ENUTMILEVEL3);

	/* Power up: clear all bits in the powerdown register. */
	FUNC2(sc->mem_res, PWD_REG, 0);

	err = 0;

out:

	if (err != 0)
		FUNC7(dev);

	return (err);
}