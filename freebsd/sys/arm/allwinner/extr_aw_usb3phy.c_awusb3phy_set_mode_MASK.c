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
struct phynode {int dummy; } ;
struct awusb3phy_softc {int mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int PHY_USB_MODE_HOST ; 
 struct awusb3phy_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phynode*) ; 
 intptr_t FUNC2 (struct phynode*) ; 

__attribute__((used)) static int
FUNC3(struct phynode *phynode, int mode)
{
	device_t dev;
	intptr_t phy;
	struct awusb3phy_softc *sc;

	dev = FUNC1(phynode);
	phy = FUNC2(phynode);
	sc = FUNC0(dev);

	if (mode != PHY_USB_MODE_HOST)
		return (EINVAL);

	sc->mode = mode;

	return (0);
}