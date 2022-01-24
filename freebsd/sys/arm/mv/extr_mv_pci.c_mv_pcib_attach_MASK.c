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
typedef  int uint32_t ;
struct mv_pcib_softc {int ap_segment; int sc_skip_enable_procedure; int sc_enable_find_root_slot; scalar_t__ sc_mode; int sc_busnr; int sc_devnr; int /*<<< orphan*/  sc_io_rman; int /*<<< orphan*/  sc_mem_rman; int /*<<< orphan*/  sc_msi_mtx; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_pci_iinfo; int /*<<< orphan*/ * sc_res; scalar_t__ sc_rid; int /*<<< orphan*/  sc_io_win_attr; int /*<<< orphan*/  sc_mem_win_attr; int /*<<< orphan*/  sc_win_target; void* sc_type; } ;
typedef  int /*<<< orphan*/  port_id ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ MV_MODE_ENDPOINT ; 
 scalar_t__ MV_MODE_ROOT ; 
 void* MV_TYPE_PCI ; 
 void* MV_TYPE_PCIE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  MV_WIN_PCI_IO_ATTR ; 
 int /*<<< orphan*/  MV_WIN_PCI_MEM_ATTR ; 
 int /*<<< orphan*/  MV_WIN_PCI_TARGET ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int PCIE_CONTROL_ROOT_CMPLX ; 
 int /*<<< orphan*/  PCIE_REG_CONTROL ; 
 int /*<<< orphan*/  PCIE_REG_STATUS ; 
 int PCIE_STATUS_DEV_OFFS ; 
 int PCI_BUSMAX ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 struct mv_pcib_softc* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,struct mv_pcib_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct mv_pcib_softc*,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 (struct mv_pcib_softc*,int,int) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (struct mv_pcib_softc*) ; 
 int FUNC23 (int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC30(device_t self)
{
	struct mv_pcib_softc *sc;
	phandle_t node, parnode;
	uint32_t val, reg0;
	int err, bus, devfn, port_id;

	sc = FUNC14(self);
	sc->sc_dev = self;

	node = FUNC24(self);
	parnode = FUNC8(node);

	if (FUNC6(node, "marvell,pcie-port", &(port_id),
	    sizeof(port_id)) <= 0) {
		/* If port ID does not exist in the FDT set value to 0 */
		if (!FUNC7(node, "marvell,pcie-port"))
			port_id = 0;
		else
			return(ENXIO);
	}

	sc->ap_segment = port_id;

	if (FUNC25(node, "mrvl,pcie")) {
		sc->sc_type = MV_TYPE_PCIE;
		sc->sc_win_target = FUNC4(port_id);
		sc->sc_mem_win_attr = FUNC2(port_id);
		sc->sc_io_win_attr = FUNC0(port_id);
#if __ARM_ARCH >= 6
		sc->sc_skip_enable_procedure = 1;
#endif
	} else if (FUNC25(parnode, "marvell,armada-370-pcie")) {
		sc->sc_type = MV_TYPE_PCIE;
		sc->sc_win_target = FUNC5(port_id);
		sc->sc_mem_win_attr = FUNC3(port_id);
		sc->sc_io_win_attr = FUNC1(port_id);
		sc->sc_enable_find_root_slot = 1;
	} else if (FUNC25(node, "mrvl,pci")) {
		sc->sc_type = MV_TYPE_PCI;
		sc->sc_win_target = MV_WIN_PCI_TARGET;
		sc->sc_mem_win_attr = MV_WIN_PCI_MEM_ATTR;
		sc->sc_io_win_attr = MV_WIN_PCI_IO_ATTR;
	} else
		return (ENXIO);

	/*
	 * Retrieve our mem-mapped registers range.
	 */
	sc->sc_rid = 0;
	sc->sc_res = FUNC9(self, SYS_RES_MEMORY, &sc->sc_rid,
	    RF_ACTIVE);
	if (sc->sc_res == NULL) {
		FUNC15(self, "could not map memory\n");
		return (ENXIO);
	}
	sc->sc_bst = FUNC29(sc->sc_res);
	sc->sc_bsh = FUNC28(sc->sc_res);

	val = FUNC11(sc->sc_bst, sc->sc_bsh, PCIE_REG_CONTROL);
	sc->sc_mode = (val & PCIE_CONTROL_ROOT_CMPLX ? MV_MODE_ROOT :
	    MV_MODE_ENDPOINT);

	/*
	 * Get PCI interrupt info.
	 */
	if (sc->sc_mode == MV_MODE_ROOT)
		FUNC26(node, &sc->sc_pci_iinfo, sizeof(pcell_t));

	/*
	 * Configure decode windows for PCI(E) access.
	 */
	if (FUNC17(node, sc) != 0)
		return (ENXIO);

	FUNC19();

	/*
	 * Enable PCIE device.
	 */
	FUNC18(sc, port_id);

	/*
	 * Memory management.
	 */
	err = FUNC22(sc);
	if (err)
		return (err);

	/*
	 * Preliminary bus enumeration to find first linked devices and set
	 * appropriate bus number from which should start the actual enumeration
	 */
	for (bus = 0; bus < PCI_BUSMAX; bus++) {
		for (devfn = 0; devfn < FUNC21(self); devfn++) {
			reg0 = FUNC23(self, bus, devfn, devfn & 0x7, 0x0, 4);
			if (reg0 == (~0U))
				continue; /* no device */
			else {
				sc->sc_busnr = bus; /* update bus number */
				break;
			}
		}
	}

	if (sc->sc_mode == MV_MODE_ROOT) {
		err = FUNC20(sc, sc->sc_busnr,
		    FUNC21(sc->sc_dev));
		if (err)
			goto error;

		FUNC13(self, "pci", -1);
	} else {
		sc->sc_devnr = 1;
		FUNC12(sc->sc_bst, sc->sc_bsh,
		    PCIE_REG_STATUS, 1 << PCIE_STATUS_DEV_OFFS);
		FUNC13(self, "pci_ep", -1);
	}

	FUNC16(&sc->sc_msi_mtx, "msi_mtx", NULL, MTX_DEF);
	return (FUNC10(self));

error:
	/* XXX SYS_RES_ should be released here */
	FUNC27(&sc->sc_mem_rman);
	FUNC27(&sc->sc_io_rman);

	return (err);
}