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
struct ifnet {int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_drv_flags; } ;
struct emac_softc {scalar_t__ emac_watchdog_timer; scalar_t__ emac_link; struct ifnet* emac_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct emac_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (struct emac_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,char*) ; 

__attribute__((used)) static void
FUNC6(struct emac_softc *sc)
{
	struct ifnet *ifp;

	FUNC0(sc);

	if (sc->emac_watchdog_timer == 0 || --sc->emac_watchdog_timer)
		return;

	ifp = sc->emac_ifp;

	if (sc->emac_link == 0) {
		if (bootverbose)
			FUNC5(sc->emac_ifp, "watchdog timeout "
			    "(missed link)\n");
	} else
		FUNC5(sc->emac_ifp, "watchdog timeout -- resetting\n");
	
	FUNC4(ifp, IFCOUNTER_OERRORS, 1);
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC2(sc);
	if (!FUNC1(&ifp->if_snd))
		FUNC3(ifp);
}