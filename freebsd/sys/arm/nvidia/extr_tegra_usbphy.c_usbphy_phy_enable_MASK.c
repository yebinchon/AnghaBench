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
struct usbphy_softc {scalar_t__ ifc_type; int /*<<< orphan*/  dev; } ;
struct phynode {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ USB_IFC_TYPE_UTMI ; 
 struct usbphy_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct phynode*) ; 
 int FUNC3 (struct usbphy_softc*) ; 
 int FUNC4 (struct usbphy_softc*) ; 

__attribute__((used)) static int
FUNC5(struct phynode *phy, bool enable)
{
	device_t dev;
	struct usbphy_softc *sc;
	int rv = 0;

	dev = FUNC2(phy);
	sc = FUNC0(dev);

	if (sc->ifc_type != USB_IFC_TYPE_UTMI) {
			FUNC1(sc->dev,
			    "Only UTMI interface is supported.\n");
			return (ENXIO);
	}
	if (enable)
		rv = FUNC4(sc);
	else
		rv = FUNC3(sc);

	return (rv);
}