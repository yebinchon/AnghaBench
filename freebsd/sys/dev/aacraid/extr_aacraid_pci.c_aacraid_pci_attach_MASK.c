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
typedef  int u_int32_t ;
struct aac_softc {int aac_hwif; int /*<<< orphan*/  flags; int /*<<< orphan*/  aac_dev; int /*<<< orphan*/  aac_parent_dmat; int /*<<< orphan*/ * aac_regs_res1; void* aac_bhandle1; void* aac_btag1; void* aac_regs_rid1; int /*<<< orphan*/ * aac_regs_res0; void* aac_bhandle0; void* aac_btag0; void* aac_regs_rid0; int /*<<< orphan*/  aac_if; } ;
struct aac_ident {int hwif; int /*<<< orphan*/  quirks; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  AAC_HWIF_SRC 129 
#define  AAC_HWIF_SRCV 128 
 int AAC_HWIF_UNKNOWN ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int ENOMEM ; 
 int ENXIO ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 char* HBA_FLAGS_DBG_INIT_B ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PCIM_CMD_BUSMASTEREN ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 struct aac_ident* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_softc*) ; 
 int /*<<< orphan*/  aacraid_src_interface ; 
 int /*<<< orphan*/  aacraid_srcv_interface ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aac_softc*,int) ; 
 struct aac_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct aac_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct aac_softc *sc;
	struct aac_ident *id;
	int error;
	u_int32_t command;

	FUNC10(NULL, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	/*
	 * Initialise softc.
	 */
	sc = FUNC8(dev);
	FUNC7(sc, sizeof(*sc));
	sc->aac_dev = dev;

	/* assume failure is 'not configured' */
	error = ENXIO;

	/* 
	 * Verify that the adapter is correctly set up in PCI space.
	 */
	FUNC11(dev);
	command = FUNC12(sc->aac_dev, PCIR_COMMAND, 2);
	if (!(command & PCIM_CMD_BUSMASTEREN)) {
		FUNC9(sc->aac_dev, "can't enable bus-master feature\n");
		goto out;
	}

	/* 
	 * Detect the hardware interface version, set up the bus interface
	 * indirection.
	 */
	id = FUNC1(dev);
	sc->aac_hwif = id->hwif;
	switch(sc->aac_hwif) {
	case AAC_HWIF_SRC:
		FUNC10(sc, HBA_FLAGS_DBG_INIT_B, "set hardware up for PMC SRC");
		sc->aac_if = aacraid_src_interface;
		break;
	case AAC_HWIF_SRCV:
		FUNC10(sc, HBA_FLAGS_DBG_INIT_B, "set hardware up for PMC SRCv");
		sc->aac_if = aacraid_srcv_interface;
		break;
	default:
		sc->aac_hwif = AAC_HWIF_UNKNOWN;
		FUNC9(sc->aac_dev, "unknown hardware type\n");
		error = ENXIO;
		goto out;
	}

	/* assume failure is 'out of memory' */
	error = ENOMEM;

	/*
	 * Allocate the PCI register window.
	 */
	sc->aac_regs_rid0 = FUNC0(0);
	if ((sc->aac_regs_res0 = FUNC4(sc->aac_dev,
	    SYS_RES_MEMORY, &sc->aac_regs_rid0, RF_ACTIVE)) == NULL) {
		FUNC9(sc->aac_dev,
		    "couldn't allocate register window 0\n");
		goto out;
	}
	sc->aac_btag0 = FUNC14(sc->aac_regs_res0);
	sc->aac_bhandle0 = FUNC13(sc->aac_regs_res0);

	sc->aac_regs_rid1 = FUNC0(2);
	if ((sc->aac_regs_res1 = FUNC4(sc->aac_dev,
	    SYS_RES_MEMORY, &sc->aac_regs_rid1, RF_ACTIVE)) == NULL) {
		FUNC9(sc->aac_dev,
		    "couldn't allocate register window 1\n");
		goto out;
	}
	sc->aac_btag1 = FUNC14(sc->aac_regs_res1);
	sc->aac_bhandle1 = FUNC13(sc->aac_regs_res1);

	/*
	 * Allocate the parent bus DMA tag appropriate for our PCI interface.
	 * 
	 * Note that some of these controllers are 64-bit capable.
	 */
	if (FUNC5(FUNC6(dev), 	/* parent */
			       PAGE_SIZE, 0,		/* algnmnt, boundary */
			       BUS_SPACE_MAXADDR,	/* lowaddr */
			       BUS_SPACE_MAXADDR, 	/* highaddr */
			       NULL, NULL, 		/* filter, filterarg */
			       BUS_SPACE_MAXSIZE_32BIT,	/* maxsize */
			       BUS_SPACE_UNRESTRICTED,	/* nsegments */
			       BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			       0,			/* flags */
			       NULL, NULL,		/* No locking needed */
			       &sc->aac_parent_dmat)) {
		FUNC9(sc->aac_dev, "can't allocate parent DMA tag\n");
		goto out;
	}

	/* Set up quirks */
	sc->flags = id->quirks;

	/*
	 * Do bus-independent initialisation.
	 */
	error = FUNC2(sc);

out:
	if (error)
		FUNC3(sc);
	return(error);
}