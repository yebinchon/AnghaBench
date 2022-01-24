#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zy7_devcfg_softc {TYPE_1__* sc_ctl_dev; int /*<<< orphan*/  intrhandle; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  actual_frequency; int /*<<< orphan*/  frequency; int /*<<< orphan*/  source; } ;
struct TYPE_3__ {struct zy7_devcfg_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zy7_devcfg_softc*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int FCLK_NUM ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int FUNC1 (struct zy7_devcfg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC2 (struct zy7_devcfg_softc*,int /*<<< orphan*/ ,int) ; 
 int ZY7_DEVCFG_INT_ALL ; 
 int /*<<< orphan*/  ZY7_DEVCFG_INT_MASK ; 
 int /*<<< orphan*/  ZY7_DEVCFG_INT_STATUS ; 
 int /*<<< orphan*/  ZY7_DEVCFG_MCTRL ; 
 int ZY7_DEVCFG_MCTRL_PS_VERS_MASK ; 
 int ZY7_DEVCFG_MCTRL_PS_VERS_SHIFT ; 
 int /*<<< orphan*/  ZY7_DEVCFG_UNLOCK ; 
 int ZY7_DEVCFG_UNLOCK_MAGIC ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct zy7_devcfg_softc*,int /*<<< orphan*/ *) ; 
 struct zy7_devcfg_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* fclk_configs ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  zy7_devcfg_cdevsw ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct zy7_devcfg_softc*) ; 
 int /*<<< orphan*/  zy7_devcfg_intr ; 
 struct zy7_devcfg_softc* zy7_devcfg_softc_p ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int zy7_ps_vers ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct zy7_devcfg_softc *sc = FUNC5(dev);
	int i;
	int rid, err;

	/* Allow only one attach. */
	if (zy7_devcfg_softc_p != NULL)
		return (ENXIO);

	sc->dev = dev;

	FUNC0(sc);

	/* Get memory resource. */
	rid = 0;
	sc->mem_res = FUNC3(dev, SYS_RES_MEMORY, &rid,
					     RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC6(dev, "could not allocate memory resources.\n");
		FUNC8(dev);
		return (ENOMEM);
	}

	/* Allocate IRQ. */
	rid = 0;
	sc->irq_res = FUNC3(dev, SYS_RES_IRQ, &rid,
					     RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC6(dev, "cannot allocate IRQ\n");
		FUNC8(dev);
		return (ENOMEM);
	}

	/* Activate the interrupt. */
	err = FUNC4(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
			     NULL, zy7_devcfg_intr, sc, &sc->intrhandle);
	if (err) {
		FUNC6(dev, "cannot setup IRQ\n");
		FUNC8(dev);
		return (err);
	}

	/* Create /dev/devcfg */
	sc->sc_ctl_dev = FUNC7(&zy7_devcfg_cdevsw, 0,
			  UID_ROOT, GID_WHEEL, 0600, "devcfg");
	if (sc->sc_ctl_dev == NULL) {
		FUNC6(dev, "failed to create /dev/devcfg");
		FUNC8(dev);
		return (ENXIO);
	}
	sc->sc_ctl_dev->si_drv1 = sc;

	zy7_devcfg_softc_p = sc;

	/* Unlock devcfg registers. */
	FUNC2(sc, ZY7_DEVCFG_UNLOCK, ZY7_DEVCFG_UNLOCK_MAGIC);

	/* Make sure interrupts are completely disabled. */
	FUNC2(sc, ZY7_DEVCFG_INT_STATUS, ZY7_DEVCFG_INT_ALL);
	FUNC2(sc, ZY7_DEVCFG_INT_MASK, 0xffffffff);

	/* Get PS_VERS for SYSCTL. */
	zy7_ps_vers = (FUNC1(sc, ZY7_DEVCFG_MCTRL) &
		       ZY7_DEVCFG_MCTRL_PS_VERS_MASK) >>
		ZY7_DEVCFG_MCTRL_PS_VERS_SHIFT;

	for (i = 0; i < FCLK_NUM; i++) {
		fclk_configs[i].source = FUNC12(i);
		fclk_configs[i].actual_frequency = 
			FUNC10(i) ? FUNC11(i) : 0;
		/* Initially assume actual frequency is the configure one */
		fclk_configs[i].frequency = fclk_configs[i].actual_frequency;
	}

	if (FUNC9(sc) < 0)
		FUNC6(dev, "failed to initialized sysctl tree\n");

	return (0);
}