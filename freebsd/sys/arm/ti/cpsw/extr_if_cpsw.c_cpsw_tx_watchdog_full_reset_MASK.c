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
struct cpswp_softc {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  active; } ;
struct cpsw_softc {int active_slave; TYPE_2__* port; int /*<<< orphan*/  dualemac; TYPE_1__ tx; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int CPSW_PORTS ; 
 int /*<<< orphan*/  FUNC2 (struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpsw_softc*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct cpsw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cpswp_softc*) ; 
 struct cpswp_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11(struct cpsw_softc *sc)
{
	struct cpswp_softc *psc;
	int i;

	FUNC4("CPSW watchdog");
	FUNC9(sc->dev, "watchdog timeout\n");
	FUNC10("CPSW_CPDMA_TX%d_HDP=0x%x\n", 0,
	    FUNC6(sc, FUNC1(0)));
	FUNC10("CPSW_CPDMA_TX%d_CP=0x%x\n", 0,
	    FUNC6(sc, FUNC0(0)));
	FUNC5(sc, &sc->tx.active);
	for (i = 0; i < CPSW_PORTS; i++) {
		if (!sc->dualemac && i != sc->active_slave)
			continue;
		psc = FUNC8(sc->port[i].dev);
		FUNC2(psc);
		FUNC7(psc);
		FUNC3(psc);
	}
}