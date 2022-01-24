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
struct omap4_prcm_softc {int sc_instance; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct omap4_prcm_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct omap4_prcm_softc *
FUNC4(int module_instance)
{
	int i, maxunit;
	devclass_t prcm_devclass;
	device_t dev;
	struct omap4_prcm_softc *sc;

	prcm_devclass = FUNC0("omap4_prcm");
	maxunit = FUNC2(prcm_devclass);

	for (i = 0; i < maxunit; i++) {
		dev = FUNC1(prcm_devclass, i);
		sc = FUNC3(dev);
		if (sc->sc_instance == module_instance)
			return (sc);
	}

	return (NULL);
}