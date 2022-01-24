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
struct bcm_lintc_softc {int /*<<< orphan*/ * bls_mem; int /*<<< orphan*/  bls_bsh; int /*<<< orphan*/  bls_bst; int /*<<< orphan*/  bls_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCM_LINTC_CONTROL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_lintc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BCM_LINTC_PRESCALER_REG ; 
 int /*<<< orphan*/  BCM_LINTC_PSR_19_2 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ FUNC4 (struct bcm_lintc_softc*) ; 
 struct bcm_lintc_softc* bcm_lintc_sc ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_lintc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct bcm_lintc_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct bcm_lintc_softc *sc;
	int cpu, rid;

	sc = FUNC7(dev);

	sc->bls_dev = dev;
	if (bcm_lintc_sc != NULL)
		return (ENXIO);

	rid = 0;
	sc->bls_mem = FUNC6(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->bls_mem == NULL) {
		FUNC8(dev, "could not allocate memory resource\n");
		return (ENXIO);
	}

	sc->bls_bst = FUNC10(sc->bls_mem);
	sc->bls_bsh = FUNC9(sc->bls_mem);

	FUNC5(sc, BCM_LINTC_CONTROL_REG, 0);
	FUNC5(sc, BCM_LINTC_PRESCALER_REG, BCM_LINTC_PSR_19_2);

	/* Disable all timers on all cores. */
	for (cpu = 0; cpu < 4; cpu++)
		FUNC5(sc, FUNC3(cpu), 0);

#ifdef SMP
	/* Enable mailbox 0 on all cores used for IPI. */
	for (cpu = 0; cpu < 4; cpu++)
		bcm_lintc_write_4(sc, BCM_LINTC_MBOX_CFG_REG(cpu),
		    BCM_LINTC_MCR_IRQ_EN_MBOX(0));
#endif

	if (FUNC4(sc) != 0) {
		FUNC8(dev, "could not attach PIC\n");
		return (ENXIO);
	}

	FUNC0(sc);
	bcm_lintc_sc = sc;
	return (0);
}