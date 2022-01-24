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
struct rk_usb2phy_softc {scalar_t__ phy_supply; } ;
struct phynode {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int ERANGE ; 
 intptr_t RK3399_USBPHY_HOST ; 
 struct rk_usb2phy_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct phynode*) ; 
 intptr_t FUNC3 (struct phynode*) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct phynode *phynode, bool enable)
{
	struct rk_usb2phy_softc *sc;
	device_t dev;
	intptr_t phy;
	int error;

	dev = FUNC2(phynode);
	phy = FUNC3(phynode);
	sc = FUNC0(dev);

	if (phy != RK3399_USBPHY_HOST)
		return (ERANGE);

	if (sc->phy_supply) {
		if (enable)
			error = FUNC5(sc->phy_supply);
		else
			error = FUNC4(sc->phy_supply);
		if (error != 0) {
			FUNC1(dev, "Cannot %sable the regulator\n",
			    enable ? "En" : "Dis");
			goto fail;
		}
	}

	return (0);
fail:
	return (ENXIO);
}