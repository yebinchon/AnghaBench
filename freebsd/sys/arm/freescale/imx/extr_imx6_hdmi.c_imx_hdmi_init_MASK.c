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
struct imx_hdmi_softc {int /*<<< orphan*/ * eh_tag; int /*<<< orphan*/  i2c_xref; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,void (*) (void*),void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  device_attach ; 
 struct imx_hdmi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

__attribute__((used)) static void
FUNC6(void *dev)
{
	struct imx_hdmi_softc *sc;

	sc = FUNC3((device_t)dev);

	if (FUNC2(sc->i2c_xref) != NULL) {
		if (sc->eh_tag != NULL) {
			FUNC0(device_attach,
			    sc->eh_tag);
		}
		FUNC5(dev);
		return;
	}

	if (bootverbose)
		FUNC4((device_t)dev, "Waiting for DDC i2c device\n");

	if (sc->eh_tag == NULL) {
		sc->eh_tag = FUNC1(device_attach, 
		    imx_hdmi_init, dev, EVENTHANDLER_PRI_ANY);
	}
}