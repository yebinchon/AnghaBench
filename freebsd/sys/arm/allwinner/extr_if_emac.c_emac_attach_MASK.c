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
typedef  int /*<<< orphan*/  uint8_t ;
struct ifnet {int if_flags; int if_hdrlen; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; struct emac_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
struct emac_softc {scalar_t__ emac_rx_process_limit; int /*<<< orphan*/  emac_intrhand; int /*<<< orphan*/ * emac_irq; int /*<<< orphan*/  emac_miibus; struct ifnet* emac_ifp; int /*<<< orphan*/ * emac_res; int /*<<< orphan*/  emac_handle; int /*<<< orphan*/  emac_tag; int /*<<< orphan*/  emac_mtx; int /*<<< orphan*/  emac_tick_ch; int /*<<< orphan*/  emac_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 void* EMAC_PROC_DEFAULT ; 
 scalar_t__ EMAC_PROC_MAX ; 
 scalar_t__ EMAC_PROC_MIN ; 
 int ENOSPC ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFQ_MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct emac_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct emac_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct emac_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  emac_ifmedia_sts ; 
 int /*<<< orphan*/  emac_ifmedia_upd ; 
 int /*<<< orphan*/  emac_init ; 
 int /*<<< orphan*/  emac_intr ; 
 int /*<<< orphan*/  emac_ioctl ; 
 int /*<<< orphan*/  FUNC15 (struct emac_softc*) ; 
 int /*<<< orphan*/  emac_start ; 
 int FUNC16 (struct emac_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct ifnet*) ; 
 struct ifnet* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_hw_emac_proc_limit ; 

__attribute__((used)) static int
FUNC26(device_t dev)
{
	struct emac_softc *sc;
	struct ifnet *ifp;
	int error, rid;
	uint8_t eaddr[ETHER_ADDR_LEN];

	sc = FUNC8(dev);
	sc->emac_dev = dev;

	error = 0;
	FUNC22(&sc->emac_mtx, FUNC7(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC5(&sc->emac_tick_ch, &sc->emac_mtx, 0);

	rid = 0;
	sc->emac_res = FUNC3(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->emac_res == NULL) {
		FUNC12(dev, "unable to map memory\n");
		error = ENXIO;
		goto fail;
	}

	sc->emac_tag = FUNC25(sc->emac_res);
	sc->emac_handle = FUNC24(sc->emac_res);

	rid = 0;
	sc->emac_irq = FUNC3(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);
	if (sc->emac_irq == NULL) {
		FUNC12(dev, "cannot allocate IRQ resources.\n");
		error = ENXIO;
		goto fail;
	}
	/* Create device sysctl node. */
	FUNC1(FUNC9(dev),
	    FUNC2(FUNC10(dev)),
	    OID_AUTO, "process_limit", CTLTYPE_INT | CTLFLAG_RW,
	    &sc->emac_rx_process_limit, 0, sysctl_hw_emac_proc_limit, "I",
	    "max number of Rx events to process");

	sc->emac_rx_process_limit = EMAC_PROC_DEFAULT;
	error = FUNC23(FUNC6(dev), FUNC11(dev),
	    "process_limit", &sc->emac_rx_process_limit);
	if (error == 0) {
		if (sc->emac_rx_process_limit < EMAC_PROC_MIN ||
		    sc->emac_rx_process_limit > EMAC_PROC_MAX) {
			FUNC12(dev, "process_limit value out of range; "
			    "using default: %d\n", EMAC_PROC_DEFAULT);
			sc->emac_rx_process_limit = EMAC_PROC_DEFAULT;
		}
	}
	/* Setup EMAC */
	error = FUNC16(sc);
	if (error != 0)
		goto fail;

	FUNC15(sc);

	ifp = sc->emac_ifp = FUNC19(IFT_ETHER);
	if (ifp == NULL) {
		FUNC12(dev, "unable to allocate ifp\n");
		error = ENOSPC;
		goto fail;
	}
	ifp->if_softc = sc;

	/* Setup MII */
	error = FUNC21(dev, &sc->emac_miibus, ifp, emac_ifmedia_upd,
	    emac_ifmedia_sts, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
	if (error != 0) {
		FUNC12(dev, "PHY probe failed\n");
		goto fail;
	}

	FUNC20(ifp, FUNC6(dev), FUNC11(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_start = emac_start;
	ifp->if_ioctl = emac_ioctl;
	ifp->if_init = emac_init;
	FUNC0(&ifp->if_snd, IFQ_MAXLEN);

	/* Get MAC address */
	FUNC14(sc, eaddr);
	FUNC17(ifp, eaddr);

	/* VLAN capability setup. */
	ifp->if_capabilities |= IFCAP_VLAN_MTU;
	ifp->if_capenable = ifp->if_capabilities;
	/* Tell the upper layer we support VLAN over-sized frames. */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);

	error = FUNC4(dev, sc->emac_irq, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, emac_intr, sc, &sc->emac_intrhand);
	if (error != 0) {
		FUNC12(dev, "could not set up interrupt handler.\n");
		FUNC18(ifp);
		goto fail;
	}

fail:
	if (error != 0)
		FUNC13(dev);
	return (error);
}