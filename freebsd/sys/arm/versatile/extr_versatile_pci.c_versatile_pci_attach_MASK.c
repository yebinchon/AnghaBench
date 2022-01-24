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
typedef  int uint32_t ;
struct TYPE_3__ {char* rm_descr; void* rm_type; } ;
struct versatile_pci_softc {int pcib_slot; int /*<<< orphan*/  pci_iinfo; int /*<<< orphan*/  mtx; TYPE_1__ irq_rman; TYPE_1__ io_rman; TYPE_1__ mem_rman; int /*<<< orphan*/  mem_res; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int PCIM_CMD_MEMEN ; 
 int PCIM_CMD_MWRICEN ; 
 int PCIM_CMD_PORTEN ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ PCIR_COMMAND ; 
 scalar_t__ PCIR_DEVVENDOR ; 
 scalar_t__ PCIR_REVID ; 
 int /*<<< orphan*/  PCI_CORE_IMAP0 ; 
 int /*<<< orphan*/  PCI_CORE_IMAP1 ; 
 int /*<<< orphan*/  PCI_CORE_IMAP2 ; 
 int /*<<< orphan*/  PCI_CORE_SELFID ; 
 int /*<<< orphan*/  PCI_CORE_SMAP0 ; 
 int /*<<< orphan*/  PCI_CORE_SMAP1 ; 
 int /*<<< orphan*/  PCI_CORE_SMAP2 ; 
 scalar_t__ PCI_IO_SIZE ; 
 int PCI_IO_WINDOW ; 
 scalar_t__ PCI_NPREFETCH_SIZE ; 
 int PCI_NPREFETCH_WINDOW ; 
 int PCI_PREFETCH_WINDOW ; 
 int PCI_SLOTMAX ; 
 void* RMAN_ARRAY ; 
 int /*<<< orphan*/  SCM_PCICTL ; 
 int VERSATILE_PCI_CLASS ; 
 int VERSATILE_PCI_DEV ; 
 scalar_t__ VERSATILE_PCI_IRQ_END ; 
 int VERSATILE_PCI_IRQ_START ; 
 int bootverbose ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct versatile_pci_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*,int,scalar_t__) ; 
 int FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  versatile_pci_mem_spec ; 
 int FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC20(device_t dev)
{
	struct versatile_pci_softc *sc = FUNC6(dev);
	int err;
	int slot;
	uint32_t vendordev_id, class_id;
	uint32_t val;
	phandle_t node;

	node = FUNC9(dev);

	/* Request memory resources */
	err = FUNC1(dev, versatile_pci_mem_spec,
		sc->mem_res);
	if (err) {
		FUNC7(dev, "Error: could not allocate memory resources\n");
		return (ENXIO);
	}

	/*
	 * Setup memory windows
	 */
	FUNC16(PCI_CORE_IMAP0, (PCI_IO_WINDOW >> 28));
	FUNC16(PCI_CORE_IMAP1, (PCI_NPREFETCH_WINDOW >> 28));
	FUNC16(PCI_CORE_IMAP2, (PCI_PREFETCH_WINDOW >> 28));

	/*
	 * XXX: this is SDRAM offset >> 28
	 * Unused as of QEMU 1.5
	 */
	FUNC16(PCI_CORE_SMAP0, (PCI_IO_WINDOW >> 28));
	FUNC16(PCI_CORE_SMAP1, (PCI_NPREFETCH_WINDOW >> 28));
	FUNC16(PCI_CORE_SMAP2, (PCI_NPREFETCH_WINDOW >> 28));

	FUNC19(SCM_PCICTL, 1);

	for (slot = 0; slot <= PCI_SLOTMAX; slot++) {
		vendordev_id = FUNC17((slot << 11) + PCIR_DEVVENDOR);
		class_id = FUNC17((slot << 11) + PCIR_REVID);
		if ((vendordev_id == VERSATILE_PCI_DEV) &&
		    (class_id == VERSATILE_PCI_CLASS))
			break;
	}

	if (slot == (PCI_SLOTMAX + 1)) {
		FUNC3(dev, versatile_pci_mem_spec,
		    sc->mem_res);
		FUNC7(dev, "Versatile PCI core not found\n");
		return (ENXIO);
	}

	sc->pcib_slot = slot;
	FUNC7(dev, "PCI core at slot #%d\n", slot);

	FUNC16(PCI_CORE_SELFID, slot);
	val = FUNC14((slot << 11) + PCIR_COMMAND);
	val |= (PCIM_CMD_BUSMASTEREN | PCIM_CMD_MEMEN | PCIM_CMD_MWRICEN);
	FUNC15((slot << 11) + PCIR_COMMAND, val);

	/* Again SDRAM start >> 28  */
	FUNC18((slot << 11) + FUNC0(0), 0);
	FUNC18((slot << 11) + FUNC0(1), 0);
	FUNC18((slot << 11) + FUNC0(2), 0);

	/* Prepare resource managers */
	sc->mem_rman.rm_type = RMAN_ARRAY;
	sc->mem_rman.rm_descr = "versatile PCI memory window";
	if (FUNC12(&sc->mem_rman) != 0 || 
	    FUNC13(&sc->mem_rman, PCI_NPREFETCH_WINDOW, 
		PCI_NPREFETCH_WINDOW + PCI_NPREFETCH_SIZE - 1) != 0) {
		FUNC11("versatile_pci_attach: failed to set up memory rman");
	}

	bootverbose = 1;
	sc->io_rman.rm_type = RMAN_ARRAY;
	sc->io_rman.rm_descr = "versatile PCI IO window";
	if (FUNC12(&sc->io_rman) != 0 || 
	    FUNC13(&sc->io_rman, PCI_IO_WINDOW, 
		PCI_IO_WINDOW + PCI_IO_SIZE - 1) != 0) {
		FUNC11("versatile_pci_attach: failed to set up I/O rman");
	}

	sc->irq_rman.rm_type = RMAN_ARRAY;
	sc->irq_rman.rm_descr = "versatile PCI IRQs";
	if (FUNC12(&sc->irq_rman) != 0 ||
	    FUNC13(&sc->irq_rman, VERSATILE_PCI_IRQ_START, 
	        VERSATILE_PCI_IRQ_END) != 0) {
		FUNC11("versatile_pci_attach: failed to set up IRQ rman");
	}

	FUNC8(&sc->mtx, FUNC5(dev), "versatilepci",
			MTX_SPIN);

	val = FUNC14((12 << 11) + PCIR_COMMAND);

	for (slot = 0; slot <= PCI_SLOTMAX; slot++) {
		vendordev_id = FUNC17((slot << 11) + PCIR_DEVVENDOR);
		class_id = FUNC17((slot << 11) + PCIR_REVID);

		if (slot == sc->pcib_slot)
			continue;

		if ((vendordev_id == 0xffffffff) &&
		    (class_id == 0xffffffff))
			continue;

		val = FUNC14((slot << 11) + PCIR_COMMAND);
		val |= PCIM_CMD_MEMEN | PCIM_CMD_PORTEN;
		FUNC15((slot << 11) + PCIR_COMMAND, val);
	}

	FUNC10(node, &sc->pci_iinfo, sizeof(cell_t));

	FUNC4(dev, "pci", -1);
	return (FUNC2(dev));
}