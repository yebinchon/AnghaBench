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
typedef  int /*<<< orphan*/  uint8_t ;
struct awg_softc {int /*<<< orphan*/  ifp; int /*<<< orphan*/  miibus; int /*<<< orphan*/  ih; int /*<<< orphan*/ * res; int /*<<< orphan*/  link_task; int /*<<< orphan*/  mtx; int /*<<< orphan*/  stat_ch; int /*<<< orphan*/  type; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  ocd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_UDP ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int IFCAP_HWCSUM ; 
 int /*<<< orphan*/  IFCAP_POLLING ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MIIF_DOPAUSE ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct awg_softc*) ; 
 scalar_t__ TX_DESC_COUNT ; 
 size_t _RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  awg_init ; 
 int /*<<< orphan*/  awg_intr ; 
 int /*<<< orphan*/  awg_ioctl ; 
 int /*<<< orphan*/  awg_link_task ; 
 int /*<<< orphan*/  awg_media_change ; 
 int /*<<< orphan*/  awg_media_status ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  awg_spec ; 
 int /*<<< orphan*/  awg_start ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct awg_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct awg_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC31(device_t dev)
{
	uint8_t eaddr[ETHER_ADDR_LEN];
	struct awg_softc *sc;
	int error;

	sc = FUNC10(dev);
	sc->dev = dev;
	sc->type = FUNC30(dev, compat_data)->ocd_data;

	if (FUNC5(dev, awg_spec, sc->res) != 0) {
		FUNC12(dev, "cannot allocate resources for device\n");
		return (ENXIO);
	}

	FUNC29(&sc->mtx, FUNC9(dev), MTX_NETWORK_LOCK, MTX_DEF);
	FUNC7(&sc->stat_ch, &sc->mtx, 0);
	FUNC0(&sc->link_task, 0, awg_link_task, sc);

	/* Setup clocks and regulators */
	error = FUNC4(dev);
	if (error != 0)
		return (error);

	/* Read MAC address before resetting the chip */
	FUNC1(dev, eaddr);

	/* Soft reset EMAC core */
	error = FUNC2(dev);
	if (error != 0)
		return (error);

	/* Setup DMA descriptors */
	error = FUNC3(dev);
	if (error != 0)
		return (error);

	/* Install interrupt handler */
	error = FUNC6(dev, sc->res[_RES_IRQ],
	    INTR_TYPE_NET | INTR_MPSAFE, NULL, awg_intr, sc, &sc->ih);
	if (error != 0) {
		FUNC12(dev, "cannot setup interrupt handler\n");
		return (error);
	}

	/* Setup ethernet interface */
	sc->ifp = FUNC14(IFT_ETHER);
	FUNC26(sc->ifp, sc);
	FUNC16(sc->ifp, FUNC8(dev), FUNC11(dev));
	FUNC20(sc->ifp, IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST);
	FUNC27(sc->ifp, awg_start);
	FUNC23(sc->ifp, awg_ioctl);
	FUNC22(sc->ifp, awg_init);
	FUNC24(sc->ifp, TX_DESC_COUNT - 1);
	FUNC25(sc->ifp);
	FUNC21(sc->ifp, CSUM_IP | CSUM_UDP | CSUM_TCP);
	FUNC17(sc->ifp, IFCAP_VLAN_MTU | IFCAP_HWCSUM);
	FUNC19(sc->ifp, FUNC15(sc->ifp));
#ifdef DEVICE_POLLING
	if_setcapabilitiesbit(sc->ifp, IFCAP_POLLING, 0);
#endif

	/* Attach MII driver */
	error = FUNC28(dev, &sc->miibus, sc->ifp, awg_media_change,
	    awg_media_status, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY,
	    MIIF_DOPAUSE);
	if (error != 0) {
		FUNC12(dev, "cannot attach PHY\n");
		return (error);
	}

	/* Attach ethernet interface */
	FUNC13(sc->ifp, eaddr);

	return (0);
}