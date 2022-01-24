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
struct ccm_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CCM_CCGRN ; 
 int /*<<< orphan*/  CCM_CCR ; 
 int /*<<< orphan*/  CCM_CSR ; 
 int ENXIO ; 
 int FIRC_EN ; 
 int FXOSC_EN ; 
 int FXOSC_RDY ; 
 int FUNC1 (struct ccm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccm_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ccm_softc*) ; 
 int /*<<< orphan*/  ccm_spec ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct ccm_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct ccm_softc *sc;
	int reg;
	int i;

	sc = FUNC6(dev);
	sc->dev = dev;

	if (FUNC3(dev, ccm_spec, sc->res)) {
		FUNC7(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC9(sc->res[0]);
	sc->bsh = FUNC8(sc->res[0]);

	/* Enable oscillator */
	reg = FUNC1(sc, CCM_CCR);
	reg |= (FIRC_EN | FXOSC_EN);
	FUNC2(sc, CCM_CCR, reg);

	/* Wait 10 times */
	for (i = 0; i < 10; i++) {
		if (FUNC1(sc, CCM_CSR) & FXOSC_RDY) {
			FUNC7(sc->dev, "On board oscillator is ready.\n");
			break;
		}

		FUNC5();
	}

	/* Clock is on during all modes, except stop mode. */
	for (i = 0; i < CCM_CCGRN; i++) {
		FUNC2(sc, FUNC0(i), 0xffffffff);
	}

	/* Take and apply FDT clocks */
	FUNC4(sc);

	return (0);
}