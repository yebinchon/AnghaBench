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
struct imx6_anatop_softc {int /*<<< orphan*/  intr_setup_hook; int /*<<< orphan*/  dev; int /*<<< orphan*/  temp_intrhand; int /*<<< orphan*/ ** res; } ;

/* Variables and functions */
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 size_t IRQRES ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct imx6_anatop_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tempmon_intr ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	int rid;
	struct imx6_anatop_softc *sc;

	sc = arg;
	rid = 0;
	sc->res[IRQRES] = FUNC0(sc->dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->res[IRQRES] != NULL) {
		FUNC1(sc->dev, sc->res[IRQRES],
		    INTR_TYPE_MISC | INTR_MPSAFE, tempmon_intr, NULL, sc,
		    &sc->temp_intrhand);
	} else {
		FUNC3(sc->dev, "Cannot allocate IRQ resource\n");
	}
	FUNC2(&sc->intr_setup_hook);
}