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
struct ifnet {int if_drv_flags; } ;
struct emac_softc {struct ifnet* emac_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct emac_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_softc*) ; 
 int IFF_DRV_RUNNING ; 
 struct emac_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct emac_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct emac_softc *sc;
	struct ifnet *ifp;

	sc = FUNC2(dev);

	FUNC0(sc);
	ifp = sc->emac_ifp;
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		FUNC3(sc);
	FUNC1(sc);

	return (0);
}