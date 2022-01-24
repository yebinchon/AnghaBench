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
typedef  int uint64_t ;
struct aac_softc {int aac_hwif; int flags; int /*<<< orphan*/  aac_parent_dmat; int /*<<< orphan*/  aac_dev; int /*<<< orphan*/ * aac_irq; void* aac_bhandle0; void* aac_bhandle1; void* aac_btag0; void* aac_btag1; int /*<<< orphan*/ * aac_regs_res0; int /*<<< orphan*/ * aac_regs_res1; int /*<<< orphan*/ * aac_if; } ;
struct aac_ident {int hwif; int quirks; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_size_t ;

/* Variables and functions */
 int AAC_FLAGS_NOMSI ; 
#define  AAC_HWIF_I960RX 131 
#define  AAC_HWIF_NARK 130 
#define  AAC_HWIF_RKT 129 
#define  AAC_HWIF_STRONGARM 128 
 int AAC_HWIF_UNKNOWN ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int ENXIO ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 char* HBA_FLAGS_DBG_INIT_B ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC1 (struct aac_softc*) ; 
 scalar_t__ aac_enable_msi ; 
 struct aac_ident* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_softc*) ; 
 int /*<<< orphan*/  aac_rkt_interface ; 
 int /*<<< orphan*/  aac_rx_interface ; 
 int /*<<< orphan*/  aac_sa_interface ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct aac_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct aac_softc*,char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct aac_softc *sc;
	const struct aac_ident *id;
	int count, error, rid;

	FUNC9(NULL, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	/*
	 * Initialise softc.
	 */
	sc = FUNC7(dev);
	sc->aac_dev = dev;

	/* assume failure is 'not configured' */
	error = ENXIO;

	/*
	 * Verify that the adapter is correctly set up in PCI space.
	 */
	FUNC11(dev);
	if (!(FUNC12(dev, PCIR_COMMAND, 2) & PCIM_CMD_BUSMASTEREN)) {
		FUNC8(dev, "can't enable bus-master feature\n");
		goto out;
	}

	/*
	 * Detect the hardware interface version, set up the bus interface
	 * indirection.
	 */
	id = FUNC2(dev);
	sc->aac_hwif = id->hwif;
	switch(sc->aac_hwif) {
	case AAC_HWIF_I960RX:
	case AAC_HWIF_NARK:
		FUNC9(sc, HBA_FLAGS_DBG_INIT_B,
		    "set hardware up for i960Rx/NARK");
		sc->aac_if = &aac_rx_interface;
		break;
	case AAC_HWIF_STRONGARM:
		FUNC9(sc, HBA_FLAGS_DBG_INIT_B,
		    "set hardware up for StrongARM");
		sc->aac_if = &aac_sa_interface;
		break;
	case AAC_HWIF_RKT:
		FUNC9(sc, HBA_FLAGS_DBG_INIT_B,
		    "set hardware up for Rocket/MIPS");
		sc->aac_if = &aac_rkt_interface;
		break;
	default:
		sc->aac_hwif = AAC_HWIF_UNKNOWN;
		FUNC8(dev, "unknown hardware type\n");
		goto out;
	}

	/* Set up quirks */
	sc->flags = id->quirks;

	/*
	 * Allocate the PCI register window(s).
	 */
	rid = FUNC0(0);
	if ((sc->aac_regs_res0 = FUNC4(dev,
	    SYS_RES_MEMORY, &rid, RF_ACTIVE)) == NULL) {
		FUNC8(dev, "can't allocate register window 0\n");
		goto out;
	}
	sc->aac_btag0 = FUNC14(sc->aac_regs_res0);
	sc->aac_bhandle0 = FUNC13(sc->aac_regs_res0);

	if (sc->aac_hwif == AAC_HWIF_NARK) {
		rid = FUNC0(1);
		if ((sc->aac_regs_res1 = FUNC4(dev,
		    SYS_RES_MEMORY, &rid, RF_ACTIVE)) == NULL) {
			FUNC8(dev,
			    "can't allocate register window 1\n");
			goto out;
		}
		sc->aac_btag1 = FUNC14(sc->aac_regs_res1);
		sc->aac_bhandle1 = FUNC13(sc->aac_regs_res1);
	} else {
		sc->aac_regs_res1 = sc->aac_regs_res0;
		sc->aac_btag1 = sc->aac_btag0;
		sc->aac_bhandle1 = sc->aac_bhandle0;
	}

	/*
	 * Allocate the interrupt.
	 */
	rid = 0;
	if (aac_enable_msi != 0 && (sc->flags & AAC_FLAGS_NOMSI) == 0) {
		count = 1;
		if (FUNC10(dev, &count) == 0)
			rid = 1;
	}
	if ((sc->aac_irq = FUNC4(sc->aac_dev, SYS_RES_IRQ,
	    &rid, RF_ACTIVE | (rid != 0 ? 0 : RF_SHAREABLE))) == NULL) {
		FUNC8(dev, "can't allocate interrupt\n");
		goto out;
	}

	/*
	 * Allocate the parent bus DMA tag appropriate for our PCI interface.
	 *
	 * Note that some of these controllers are 64-bit capable.
	 */
	if (FUNC5(FUNC6(dev),	/* parent */
			       PAGE_SIZE,		/* algnmnt */
			       ((bus_size_t)((uint64_t)1 << 32)), /* boundary*/
			       BUS_SPACE_MAXADDR,	/* lowaddr */
			       BUS_SPACE_MAXADDR, 	/* highaddr */
			       NULL, NULL, 		/* filter, filterarg */
			       BUS_SPACE_MAXSIZE_32BIT,	/* maxsize */
			       BUS_SPACE_UNRESTRICTED,	/* nsegments */
			       BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			       0,			/* flags */
			       NULL, NULL,		/* No locking needed */
			       &sc->aac_parent_dmat)) {
		FUNC8(dev, "can't allocate parent DMA tag\n");
		goto out;
	}

	/*
	 * Do bus-independent initialisation.
	 */
	error = FUNC1(sc);

out:
	if (error)
		FUNC3(sc);
	return(error);
}