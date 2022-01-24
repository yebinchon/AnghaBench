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
struct phynode {int dummy; } ;
struct awusbphy_softc {int /*<<< orphan*/ ** reg; TYPE_1__* phy_conf; } ;
typedef  int /*<<< orphan*/ * regulator_t ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {intptr_t num_phys; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,intptr_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ bootverbose ; 
 struct awusbphy_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct phynode*) ; 
 intptr_t FUNC5 (struct phynode*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct phynode *phynode, bool enable)
{
	device_t dev;
	intptr_t phy;
	struct awusbphy_softc *sc;
	regulator_t reg;
	int error, vbus_det;

	dev = FUNC4(phynode);
	phy = FUNC5(phynode);
	sc = FUNC2(dev);

	if (phy < 0 || phy >= sc->phy_conf->num_phys)
		return (ERANGE);

	/* Configure PHY */
	FUNC0(dev, phy);

	/* Regulators are optional. If not found, return success. */
	reg = sc->reg[phy];
	if (reg == NULL)
		return (0);

	if (phy == 0) {
		/* If an external vbus is detected, do not enable phy 0 */
		error = FUNC1(dev, &vbus_det);
		if (error)
			goto out;

		if (vbus_det == 1) {
			if (bootverbose)
				FUNC3(dev, "External VBUS detected, not enabling the regulator\n");

			return (0);
		}
	}
	if (enable) {
		/* Depending on the PHY we need to route OTG to OHCI/EHCI */
		error = FUNC7(reg);
	} else
		error = FUNC6(reg);

out:
	if (error != 0) {
		FUNC3(dev,
		    "couldn't %s regulator for phy %jd\n",
		    enable ? "enable" : "disable", (intmax_t)phy);
		return (error);
	}

	return (0);
}