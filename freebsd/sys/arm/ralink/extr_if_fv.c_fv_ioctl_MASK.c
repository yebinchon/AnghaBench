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
typedef  int u_long ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; int /*<<< orphan*/  if_hwassist; struct fv_softc* if_softc; } ;
struct fv_softc {int fv_if_flags; int /*<<< orphan*/  fv_ifmedia; int /*<<< orphan*/  fv_miibus; int /*<<< orphan*/  fv_detach; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_OPMODE ; 
 int FUNC0 (struct fv_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fv_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FV_CSUM_FEATURES ; 
 int /*<<< orphan*/  FUNC2 (struct fv_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct fv_softc*) ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int OPMODE_PM ; 
 int OPMODE_PR ; 
#define  SIOCADDMULTI 133 
#define  SIOCDELMULTI 132 
#define  SIOCGIFMEDIA 131 
#define  SIOCSIFCAP 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ifnet*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct fv_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct fv_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct fv_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct fv_softc*) ; 
 int FUNC11 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int mask ; 

__attribute__((used)) static int
FUNC12(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct fv_softc		*sc = ifp->if_softc;
	struct ifreq		*ifr = (struct ifreq *) data;
#ifdef MII
	struct mii_data		*mii;
#endif
	int			error;
	int			csr;

	switch (command) {
	case SIOCSIFFLAGS:
		FUNC2(sc);
		if (ifp->if_flags & IFF_UP) {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				if ((ifp->if_flags ^ sc->fv_if_flags) &
				    IFF_PROMISC) {
					csr = FUNC0(sc, CSR_OPMODE);
					FUNC1(sc, CSR_OPMODE, csr |
					    OPMODE_PM | OPMODE_PR);
				}
				if ((ifp->if_flags ^ sc->fv_if_flags) &
				    IFF_ALLMULTI) {
					csr = FUNC0(sc, CSR_OPMODE);
					FUNC1(sc, CSR_OPMODE, csr |
					    OPMODE_PM);
				}
			} else {
				if (sc->fv_detach == 0)
					FUNC7(sc);
			}
		} else {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING)
				FUNC9(sc);
		}
		sc->fv_if_flags = ifp->if_flags;
		FUNC3(sc);
		error = 0;
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
#if 0
		FV_LOCK(sc);
		fv_set_filter(sc);
		FV_UNLOCK(sc);
#endif
		error = 0;
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
#ifdef MII
		mii = device_get_softc(sc->fv_miibus);
		error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
#else
		error = FUNC11(ifp, ifr, &sc->fv_ifmedia, command);
#endif
		break;
	case SIOCSIFCAP:
		error = 0;
#if 0
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
		if ((mask & IFCAP_HWCSUM) != 0) {
			ifp->if_capenable ^= IFCAP_HWCSUM;
			if ((IFCAP_HWCSUM & ifp->if_capenable) &&
			    (IFCAP_HWCSUM & ifp->if_capabilities))
				ifp->if_hwassist = FV_CSUM_FEATURES;
			else
				ifp->if_hwassist = 0;
		}
		if ((mask & IFCAP_VLAN_HWTAGGING) != 0) {
			ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
			if (IFCAP_VLAN_HWTAGGING & ifp->if_capenable &&
			    IFCAP_VLAN_HWTAGGING & ifp->if_capabilities &&
			    ifp->if_drv_flags & IFF_DRV_RUNNING) {
				FV_LOCK(sc);
				fv_vlan_setup(sc);
				FV_UNLOCK(sc);
			}
		}
		VLAN_CAPABILITIES(ifp);
#endif
		break;
	default:
		error = FUNC6(ifp, command, data);
		break;
	}

	return (error);
}