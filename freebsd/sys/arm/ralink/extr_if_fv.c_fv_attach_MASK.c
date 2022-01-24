#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ifq_maxlen; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; struct fv_softc* if_softc; } ;
struct fv_softc {int* fv_eaddr; int fv_rid; int /*<<< orphan*/  fv_intrhand; int /*<<< orphan*/ * fv_irq; int /*<<< orphan*/  fv_ifmedia; int /*<<< orphan*/  fv_miibus; int /*<<< orphan*/  fv_dev; int /*<<< orphan*/  fv_miiproxy; struct ifnet* fv_ifp; int /*<<< orphan*/ * fv_res; int /*<<< orphan*/  fv_bhandle; int /*<<< orphan*/  fv_btag; int /*<<< orphan*/  fv_link_task; int /*<<< orphan*/  fv_mtx; int /*<<< orphan*/  fv_stat_callout; int /*<<< orphan*/  fv_ofw; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  BUSMODE_SWR ; 
 int /*<<< orphan*/  CSR_BUSMODE ; 
 int /*<<< orphan*/  FUNC0 (struct fv_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOSPC ; 
 int ENXIO ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,void*,int) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fv_softc*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fv_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct fv_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct fv_softc*) ; 
 int /*<<< orphan*/  fv_ifmedia_sts ; 
 int /*<<< orphan*/  fv_ifmedia_upd ; 
 int /*<<< orphan*/  fv_init ; 
 int /*<<< orphan*/  fv_intr ; 
 int /*<<< orphan*/  fv_ioctl ; 
 int /*<<< orphan*/  fv_link_task ; 
 int /*<<< orphan*/  fv_start ; 
 struct ifnet* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC29(device_t dev)
{
	struct ifnet		*ifp;
	struct fv_softc		*sc;
	int			error = 0, rid;
	int			unit;
	int			i;

	sc = FUNC11(dev);
	unit = FUNC12(dev);
	sc->fv_dev = dev;
	sc->fv_ofw = FUNC26(dev); 

	i = FUNC4(sc->fv_ofw, "local-mac-address", (void *)&sc->fv_eaddr, 6);
	if (i != 6) {
		/* hardcode macaddress */
		sc->fv_eaddr[0] = 0x00;
		sc->fv_eaddr[1] = 0x0C;
		sc->fv_eaddr[2] = 0x42;
		sc->fv_eaddr[3] = 0x09;
		sc->fv_eaddr[4] = 0x5E;
		sc->fv_eaddr[5] = 0x6B;
	}

	FUNC25(&sc->fv_mtx, FUNC10(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC8(&sc->fv_stat_callout, &sc->fv_mtx, 0);
	FUNC5(&sc->fv_link_task, 0, fv_link_task, sc);

	/* Map control/status registers. */
	sc->fv_rid = 0;
	sc->fv_res = FUNC6(dev, SYS_RES_MEMORY, &sc->fv_rid, 
	    RF_ACTIVE | RF_SHAREABLE);

	if (sc->fv_res == NULL) {
		FUNC13(dev, "couldn't map memory\n");
		error = ENXIO;
		goto fail;
	}

	sc->fv_btag = FUNC28(sc->fv_res);
	sc->fv_bhandle = FUNC27(sc->fv_res);

	/* Allocate interrupts */
	rid = 0;
	sc->fv_irq = FUNC6(dev, SYS_RES_IRQ, &rid, 
	    RF_SHAREABLE | RF_ACTIVE);

	if (sc->fv_irq == NULL) {
		FUNC13(dev, "couldn't map interrupt\n");
		error = ENXIO;
		goto fail;
	}

	/* Allocate ifnet structure. */
	ifp = sc->fv_ifp = FUNC18(IFT_ETHER);

	if (ifp == NULL) {
		FUNC13(dev, "couldn't allocate ifnet structure\n");
		error = ENOSPC;
		goto fail;
	}
	ifp->if_softc = sc;
	FUNC19(ifp, FUNC9(dev), FUNC12(dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_ioctl = fv_ioctl;
	ifp->if_start = fv_start;
	ifp->if_init = fv_init;

	/* ifqmaxlen is sysctl value in net/if.c */
	FUNC2(&ifp->if_snd, ifqmaxlen);
	ifp->if_snd.ifq_maxlen = ifqmaxlen;
	FUNC3(&ifp->if_snd);

	ifp->if_capenable = ifp->if_capabilities;

	if (FUNC17(sc) != 0) {
		error = ENXIO;
		goto fail;
	}

	/* TODO: calculate prescale */
/*
	CSR_WRITE_4(sc, FV_ETHMCP, (165000000 / (1250000 + 1)) & ~1);

	CSR_WRITE_4(sc, FV_MIIMCFG, FV_MIIMCFG_R);
	DELAY(1000);
	CSR_WRITE_4(sc, FV_MIIMCFG, 0);
*/
	FUNC0(sc, CSR_BUSMODE, BUSMODE_SWR);
	FUNC1(1000);

#ifdef FV_MDIO
	sc->fv_miiproxy = mii_attach_proxy(sc->fv_dev);
#endif

#ifdef MII
	/* Do MII setup. */
	error = mii_attach(dev, &sc->fv_miibus, ifp, fv_ifmedia_upd,
	    fv_ifmedia_sts, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
	if (error != 0) {
		device_printf(dev, "attaching PHYs failed\n");
		goto fail;
	}
#else
	FUNC21(&sc->fv_ifmedia, 0, fv_ifmedia_upd, fv_ifmedia_sts);

	FUNC20(&sc->fv_ifmedia, IFM_ETHER | IFM_AUTO, 0, NULL);
	FUNC22(&sc->fv_ifmedia, IFM_ETHER | IFM_AUTO);
#endif

	/* Call MI attach routine. */
	FUNC14(ifp, sc->fv_eaddr);

	/* Hook interrupt last to avoid having to lock softc */
	error = FUNC7(dev, sc->fv_irq, INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, fv_intr, sc, &sc->fv_intrhand);

	if (error) {
		FUNC13(dev, "couldn't set up irq\n");
		FUNC15(ifp);
		goto fail;
	}

fail:
	if (error) 
		FUNC16(dev);

	return (error);
}