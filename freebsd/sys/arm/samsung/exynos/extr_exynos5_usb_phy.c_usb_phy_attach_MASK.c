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
struct usb_phy_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_phy_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_phy_softc*) ; 
 int /*<<< orphan*/  usb_phy_spec ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct usb_phy_softc*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct usb_phy_softc *sc;

	sc = FUNC2(dev);
	sc->dev = dev;

	if (FUNC1(dev, usb_phy_spec, sc->res)) {
		FUNC3(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC5(sc->res[0]);
	sc->bsh = FUNC4(sc->res[0]);

	FUNC8(sc);

	FUNC7();

	FUNC0(100);

	FUNC6(sc);

	return (0);
}