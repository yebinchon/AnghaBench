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
typedef  int uint32_t ;
struct phynode {int dummy; } ;
struct awusbphy_softc {int mode; int /*<<< orphan*/  phy_ctrl; TYPE_1__* phy_conf; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int phy0_route; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DPDM_CHANGE_DET ; 
 int DPDM_PULLUP_EN ; 
 int EINVAL ; 
 int FORCE_ID ; 
 int FORCE_ID_LOW ; 
 int FORCE_ID_SHIFT ; 
 int FORCE_VBUS_VALID ; 
 int FORCE_VBUS_VALID_HIGH ; 
 int FORCE_VBUS_VALID_SHIFT ; 
 int ID_CHANGE_DET ; 
 int ID_PULLUP_EN ; 
 int /*<<< orphan*/  OTG_PHY_CFG ; 
 int /*<<< orphan*/  OTG_PHY_ROUTE_OTG ; 
 int /*<<< orphan*/  PHY_CSR ; 
#define  PHY_USB_MODE_HOST 129 
#define  PHY_USB_MODE_OTG 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VBUS_CHANGE_DET ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct awusbphy_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct phynode*) ; 
 intptr_t FUNC7 (struct phynode*) ; 

__attribute__((used)) static int
FUNC8(struct phynode *phynode, int mode)
{
	device_t dev;
	intptr_t phy;
	struct awusbphy_softc *sc;
	uint32_t val;
	int error, vbus_det;

	dev = FUNC6(phynode);
	phy = FUNC7(phynode);
	sc = FUNC5(dev);

	if (phy != 0) {
		if (mode != PHY_USB_MODE_HOST)
			return (EINVAL);
		return (0);
	}

	switch (mode) {
	case PHY_USB_MODE_HOST:
		val = FUNC3(sc->phy_ctrl, PHY_CSR);
		val &= ~(VBUS_CHANGE_DET | ID_CHANGE_DET | DPDM_CHANGE_DET);
		val |= (ID_PULLUP_EN | DPDM_PULLUP_EN);
		val &= ~FORCE_ID;
		val |= (FORCE_ID_LOW << FORCE_ID_SHIFT);
		val &= ~FORCE_VBUS_VALID;
		val |= (FORCE_VBUS_VALID_HIGH << FORCE_VBUS_VALID_SHIFT);
		FUNC4(sc->phy_ctrl, PHY_CSR, val);
		if (sc->phy_conf->phy0_route == true) {
			error = FUNC2(dev, &vbus_det);
			if (error)
				goto out;
			if (vbus_det == 0)
				FUNC0(sc->phy_ctrl, OTG_PHY_CFG,
				  OTG_PHY_ROUTE_OTG);
			else
				FUNC1(sc->phy_ctrl, OTG_PHY_CFG,
				  OTG_PHY_ROUTE_OTG);
		}
		break;
	case PHY_USB_MODE_OTG:
		/* TODO */
		break;
	}

	sc->mode = mode;


out:
	return (0);
}