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
struct bcm2835_clkman_softc {int /*<<< orphan*/  sc_m_res; int /*<<< orphan*/  sc_m_bsh; int /*<<< orphan*/  sc_m_bst; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct bcm2835_clkman_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct bcm2835_clkman_softc *sc;
	int rid;

	if (FUNC3(dev) != 0) {
		FUNC4(dev, "only one clk manager supported\n");
		return (ENXIO);
	}

	sc = FUNC2(dev);
	sc->sc_dev = dev;

	rid = 0;
	sc->sc_m_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_m_res) {
		FUNC4(dev, "cannot allocate memory window\n");
		return (ENXIO);
	}

	sc->sc_m_bst = FUNC6(sc->sc_m_res);
	sc->sc_m_bsh = FUNC5(sc->sc_m_res);

	return (FUNC1(dev));
}