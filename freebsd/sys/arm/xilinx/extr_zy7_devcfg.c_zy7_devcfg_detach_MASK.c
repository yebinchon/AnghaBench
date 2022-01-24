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
struct zy7_devcfg_softc {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; scalar_t__ intrhandle; int /*<<< orphan*/ * sc_ctl_dev; int /*<<< orphan*/ * sysctl_tree_top; int /*<<< orphan*/  sysctl_tree; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zy7_devcfg_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct zy7_devcfg_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * zy7_devcfg_softc_p ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct zy7_devcfg_softc *sc = FUNC5(dev);

	if (sc->sysctl_tree_top != NULL) {
		FUNC8(&sc->sysctl_tree);
		sc->sysctl_tree_top = NULL;
	}

	if (FUNC6(dev))
		FUNC1(dev);

	/* Get rid of /dev/devcfg0. */
	if (sc->sc_ctl_dev != NULL)
		FUNC4(sc->sc_ctl_dev);

	/* Teardown and release interrupt. */
	if (sc->irq_res != NULL) {
		if (sc->intrhandle)
			FUNC3(dev, sc->irq_res, sc->intrhandle);
		FUNC2(dev, SYS_RES_IRQ,
			     FUNC7(sc->irq_res), sc->irq_res);
	}

	/* Release memory resource. */
	if (sc->mem_res != NULL)
		FUNC2(dev, SYS_RES_MEMORY,
			     FUNC7(sc->mem_res), sc->mem_res);

	zy7_devcfg_softc_p = NULL;

	FUNC0(sc);

	return (0);
}