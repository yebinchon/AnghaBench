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
typedef  int uint32_t ;
typedef  int u_long ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_capenable; int if_flags; int if_drv_flags; struct cpswp_softc* if_softc; } ;
struct cpswp_softc {int if_flags; TYPE_1__* mii; int /*<<< orphan*/  swsc; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  mii_media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpswp_softc*) ; 
 int IFCAP_HWCSUM ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 133 
#define  SIOCDELMULTI 132 
#define  SIOCGIFMEDIA 131 
#define  SIOCSIFCAP 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int /*<<< orphan*/  FUNC3 (struct cpswp_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cpswp_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cpswp_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpswp_softc*) ; 
 int FUNC8 (struct ifnet*,int,scalar_t__) ; 
 int FUNC9 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC10(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct cpswp_softc *sc;
	struct ifreq *ifr;
	int error;
	uint32_t changed;

	error = 0;
	sc = ifp->if_softc;
	ifr = (struct ifreq *)data;

	switch (command) {
	case SIOCSIFCAP:
		changed = ifp->if_capenable ^ ifr->ifr_reqcap;
		if (changed & IFCAP_HWCSUM) {
			if ((ifr->ifr_reqcap & changed) & IFCAP_HWCSUM)
				ifp->if_capenable |= IFCAP_HWCSUM;
			else
				ifp->if_capenable &= ~IFCAP_HWCSUM;
		}
		error = 0;
		break;
	case SIOCSIFFLAGS:
		FUNC1(sc);
		if (ifp->if_flags & IFF_UP) {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				changed = ifp->if_flags ^ sc->if_flags;
				FUNC0(sc->swsc,
				    ("SIOCSIFFLAGS: UP & RUNNING (changed=0x%x)",
				    changed));
				if (changed & IFF_PROMISC)
					FUNC4(sc,
					    ifp->if_flags & IFF_PROMISC);
				if (changed & IFF_ALLMULTI)
					FUNC3(sc,
					    ifp->if_flags & IFF_ALLMULTI);
			} else {
				FUNC0(sc->swsc,
				    ("SIOCSIFFLAGS: starting up"));
				FUNC6(sc);
			}
		} else if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
			FUNC0(sc->swsc, ("SIOCSIFFLAGS: shutting down"));
			FUNC7(sc);
		}

		sc->if_flags = ifp->if_flags;
		FUNC2(sc);
		break;
	case SIOCADDMULTI:
		FUNC5(sc, 0);
		break;
	case SIOCDELMULTI:
		/* Ugh.  DELMULTI doesn't provide the specific address
		   being removed, so the best we can do is remove
		   everything and rebuild it all. */
		FUNC5(sc, 1);
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
		error = FUNC9(ifp, ifr, &sc->mii->mii_media, command);
		break;
	default:
		error = FUNC8(ifp, command, data);
	}
	return (error);
}