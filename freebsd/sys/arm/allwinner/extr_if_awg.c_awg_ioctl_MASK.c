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
struct awg_softc {int if_flags; int /*<<< orphan*/  miibus; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct awg_softc*) ; 
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_UDP ; 
 int IFCAP_POLLING ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_MTU ; 
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
 int /*<<< orphan*/  FUNC2 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct awg_softc*) ; 
 int /*<<< orphan*/  awg_poll ; 
 int /*<<< orphan*/  FUNC5 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct awg_softc*) ; 
 struct mii_data* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 struct awg_softc* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int FUNC18 (int /*<<< orphan*/ ,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC19(if_t ifp, u_long cmd, caddr_t data)
{
	struct awg_softc *sc;
	struct mii_data *mii;
	struct ifreq *ifr;
	int flags, mask, error;

	sc = FUNC14(ifp);
	mii = FUNC7(sc->miibus);
	ifr = (struct ifreq *)data;
	error = 0;

	switch (cmd) {
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if (FUNC13(ifp) & IFF_UP) {
			if (FUNC12(ifp) & IFF_DRV_RUNNING) {
				flags = FUNC13(ifp) ^ sc->if_flags;
				if ((flags & (IFF_PROMISC|IFF_ALLMULTI)) != 0)
					FUNC5(sc);
			} else
				FUNC4(sc);
		} else {
			if (FUNC12(ifp) & IFF_DRV_RUNNING)
				FUNC6(sc);
		}
		sc->if_flags = FUNC13(ifp);
		FUNC1(sc);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		if (FUNC12(ifp) & IFF_DRV_RUNNING) {
			FUNC0(sc);
			FUNC5(sc);
			FUNC1(sc);
		}
		break;
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		error = FUNC18(ifp, ifr, &mii->mii_media, cmd);
		break;
	case SIOCSIFCAP:
		mask = ifr->ifr_reqcap ^ FUNC11(ifp);
#ifdef DEVICE_POLLING
		if (mask & IFCAP_POLLING) {
			if ((ifr->ifr_reqcap & IFCAP_POLLING) != 0) {
				error = ether_poll_register(awg_poll, ifp);
				if (error != 0)
					break;
				AWG_LOCK(sc);
				awg_disable_intr(sc);
				if_setcapenablebit(ifp, IFCAP_POLLING, 0);
				AWG_UNLOCK(sc);
			} else {
				error = ether_poll_deregister(ifp);
				AWG_LOCK(sc);
				awg_enable_intr(sc);
				if_setcapenablebit(ifp, 0, IFCAP_POLLING);
				AWG_UNLOCK(sc);
			}
		}
#endif
		if (mask & IFCAP_VLAN_MTU)
			FUNC17(ifp, IFCAP_VLAN_MTU);
		if (mask & IFCAP_RXCSUM)
			FUNC17(ifp, IFCAP_RXCSUM);
		if (mask & IFCAP_TXCSUM)
			FUNC17(ifp, IFCAP_TXCSUM);
		if ((FUNC11(ifp) & IFCAP_TXCSUM) != 0)
			FUNC16(ifp, CSUM_IP | CSUM_UDP | CSUM_TCP, 0);
		else
			FUNC16(ifp, 0, CSUM_IP | CSUM_UDP | CSUM_TCP);
		break;
	default:
		error = FUNC8(ifp, cmd, data);
		break;
	}

	return (error);
}