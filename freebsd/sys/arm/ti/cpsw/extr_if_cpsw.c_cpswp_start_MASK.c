#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int if_drv_flags; struct cpswp_softc* if_softc; } ;
struct cpswp_softc {TYPE_2__* swsc; } ;
struct TYPE_5__ {scalar_t__ running; } ;
struct TYPE_6__ {TYPE_1__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpswp_softc*) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp)
{
	struct cpswp_softc *sc;

	sc = ifp->if_softc;
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0 ||
	    sc->swsc->tx.running == 0) {
		return;
	}
	FUNC0(sc->swsc);
	FUNC3(sc);
	FUNC2(sc->swsc);
	FUNC1(sc->swsc);
}