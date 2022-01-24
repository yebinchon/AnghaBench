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
typedef  size_t uint32_t ;
struct aml8726_usb_phy_softc {size_t npwr_en; int /*<<< orphan*/  res; TYPE_1__* pwr_en; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  pol; int /*<<< orphan*/  pin; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t AML_USB_PHY_CFG_A_POR ; 
 size_t AML_USB_PHY_CFG_B_POR ; 
 int /*<<< orphan*/  AML_USB_PHY_CFG_REG ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_usb_phy_softc*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct aml8726_usb_phy_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_usb_phy_softc*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aml8726_usb_phy_spec ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aml8726_usb_phy_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct aml8726_usb_phy_softc *sc = FUNC6(dev);
	uint32_t i;
	uint32_t value;

	/*
	 * Disable by issuing a power on reset.
	 */

	value = FUNC1(sc, AML_USB_PHY_CFG_REG);

	value |= (AML_USB_PHY_CFG_A_POR | AML_USB_PHY_CFG_B_POR);

	FUNC2(sc, AML_USB_PHY_CFG_REG, value);

	FUNC0(sc, AML_USB_PHY_CFG_REG);

	/* Turn off power */
	i = sc->npwr_en;
	while (i-- != 0) {
		(void)FUNC3(sc->pwr_en[i].dev, sc->pwr_en[i].pin,
		    FUNC4(sc->pwr_en[i].pol));
	}
	FUNC7 (sc->pwr_en, M_DEVBUF);
	sc->pwr_en = NULL;

	FUNC5(dev, aml8726_usb_phy_spec, sc->res);

	return (0);
}