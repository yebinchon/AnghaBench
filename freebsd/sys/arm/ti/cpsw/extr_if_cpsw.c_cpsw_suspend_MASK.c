#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cpswp_softc {int dummy; } ;
struct cpsw_softc {int active_slave; TYPE_1__* port; int /*<<< orphan*/  dualemac; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpsw_softc*,char*) ; 
 int CPSW_PORTS ; 
 int /*<<< orphan*/  FUNC1 (struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpswp_softc*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct cpsw_softc *sc;
	struct cpswp_softc *psc;
	int i;

	sc = FUNC4(dev);
	FUNC0(sc, (""));
	for (i = 0; i < CPSW_PORTS; i++) {
		if (!sc->dualemac && i != sc->active_slave)
			continue;
		psc = FUNC4(sc->port[i].dev);
		FUNC1(psc);
		FUNC3(psc);
		FUNC2(psc);
	}

	return (0);
}