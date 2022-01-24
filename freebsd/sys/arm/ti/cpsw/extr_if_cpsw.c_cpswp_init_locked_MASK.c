#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct cpswp_softc {int unit; int vlan; int /*<<< orphan*/  mii_callout; int /*<<< orphan*/  mii; TYPE_3__* swsc; int /*<<< orphan*/  init_uptime; struct ifnet* ifp; } ;
struct TYPE_13__ {int vid; } ;
struct TYPE_11__ {int /*<<< orphan*/  running; } ;
struct TYPE_10__ {int /*<<< orphan*/  running; } ;
struct TYPE_12__ {scalar_t__ dualemac; TYPE_2__ tx; TYPE_1__ rx; } ;

/* Variables and functions */
 int ALE_PORTCTL_FORWARD ; 
 int ALE_PORTCTL_INGRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int CPSW_SL_MACTL_GMII_ENABLE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int CPSW_VLANS ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 TYPE_4__* cpsw_vgroups ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct cpswp_softc*,int) ; 
 int /*<<< orphan*/  cpswp_tick ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(void *arg)
{
#ifdef CPSW_ETHERSWITCH
	int i;
#endif
	struct cpswp_softc *sc = arg;
	struct ifnet *ifp;
	uint32_t reg;

	FUNC1(sc->swsc, (""));
	FUNC2(sc);
	ifp = sc->ifp;
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		return;

	FUNC15(&sc->init_uptime);

	if (!sc->swsc->rx.running && !sc->swsc->tx.running) {
		/* Reset the controller. */
		FUNC12(sc->swsc);
		FUNC10(sc->swsc);
	}

	/* Set Slave Mapping. */
	FUNC13(sc->swsc, FUNC7(sc->unit), 0x76543210);
	FUNC13(sc->swsc, FUNC3(sc->unit + 1),
	    0x33221100);
	FUNC13(sc->swsc, FUNC6(sc->unit), 0x5f2);
	/* Enable MAC RX/TX modules. */
	/* TODO: Docs claim that IFCTL_B and IFCTL_A do the same thing? */
	/* Huh?  Docs call bit 0 "Loopback" some places, "FullDuplex" others. */
	reg = FUNC11(sc->swsc, FUNC5(sc->unit));
	reg |= CPSW_SL_MACTL_GMII_ENABLE;
	FUNC13(sc->swsc, FUNC5(sc->unit), reg);

	/* Initialize ALE: set port to forwarding, initialize addrs */
	FUNC13(sc->swsc, FUNC0(sc->unit + 1),
	    ALE_PORTCTL_INGRESS | ALE_PORTCTL_FORWARD);
	FUNC14(sc, 1);

	if (sc->swsc->dualemac) {
		/* Set Port VID. */
		FUNC13(sc->swsc, FUNC4(sc->unit + 1),
		    sc->vlan & 0xfff);
		FUNC9(sc->swsc, sc->vlan,
		    (1 << (sc->unit + 1)) | (1 << 0), /* Member list */
		    (1 << (sc->unit + 1)) | (1 << 0), /* Untagged egress */
		    (1 << (sc->unit + 1)) | (1 << 0), 0); /* mcast reg flood */
#ifdef CPSW_ETHERSWITCH
		for (i = 0; i < CPSW_VLANS; i++) {
			if (cpsw_vgroups[i].vid != -1)
				continue;
			cpsw_vgroups[i].vid = sc->vlan;
			break;
		}
#endif
	}

	FUNC16(sc->mii);
	FUNC8(&sc->mii_callout, hz, cpswp_tick, sc);
	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}