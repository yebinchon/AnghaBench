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
struct TYPE_2__ {int sc_range_mask; int /*<<< orphan*/  sc_nrange; int /*<<< orphan*/  sc_range; } ;
struct tegra_pcib_softc {struct tegra_pcib_port** ports; int /*<<< orphan*/  intr_cookie; int /*<<< orphan*/ * irq_res; TYPE_1__ ofw_pci; void* msi_irq_res; int /*<<< orphan*/  dev; int /*<<< orphan*/  bus_tag; int /*<<< orphan*/ * cfg_mem_res; int /*<<< orphan*/  cfg_base_addr; int /*<<< orphan*/ * afi_mem_res; int /*<<< orphan*/ * pads_mem_res; int /*<<< orphan*/  mtx; } ;
struct tegra_pcib_port {scalar_t__ enabled; int /*<<< orphan*/  cfg_handle; int /*<<< orphan*/  rp_size; int /*<<< orphan*/  rp_base_addr; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int RF_ACTIVE ; 
 int RF_ALLOCATED ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int TEGRA_PCIB_MAX_PORTS ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tegra_pcib_softc*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct tegra_pcib_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tegra_pci_intr ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct tegra_pcib_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct tegra_pcib_softc*) ; 
 int FUNC15 (struct tegra_pcib_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct tegra_pcib_softc*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct tegra_pcib_softc*,int) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct tegra_pcib_softc *sc;
	phandle_t node;
	int rv;
	int rid;
	struct tegra_pcib_port *port;
	int i;

	sc = FUNC5(dev);
	sc->dev = dev;
	FUNC7(&sc->mtx, "msi_mtx", NULL, MTX_DEF);

	node = FUNC8(dev);

	rv = FUNC15(sc, node);
	if (rv != 0) {
		FUNC6(dev, "Cannot get FDT resources\n");
		return (rv);
	}

	/* Allocate bus_space resources. */
	rid = 0;
	sc->pads_mem_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->pads_mem_res == NULL) {
		FUNC6(dev, "Cannot allocate PADS register\n");
		rv = ENXIO;
		goto out;
	}
	/*
	 * XXX - FIXME
	 * tag for config space is not filled when RF_ALLOCATED flag is used.
	 */
	sc->bus_tag = FUNC10(sc->pads_mem_res);

	rid = 1;
	sc->afi_mem_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->afi_mem_res == NULL) {
		FUNC6(dev, "Cannot allocate AFI register\n");
		rv = ENXIO;
		goto out;
	}

	rid = 2;
	sc->cfg_mem_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ALLOCATED);
	if (sc->cfg_mem_res == NULL) {
		FUNC6(dev, "Cannot allocate config space memory\n");
		rv = ENXIO;
		goto out;
	}
	sc->cfg_base_addr = FUNC11(sc->cfg_mem_res);


	/* Map RP slots */
	for (i = 0; i < TEGRA_PCIB_MAX_PORTS; i++) {
		if (sc->ports[i] == NULL)
			continue;
		port = sc->ports[i];
		rv = FUNC3(sc->bus_tag, port->rp_base_addr,
		    port->rp_size, 0, &port->cfg_handle);
		if (rv != 0) {
			FUNC6(sc->dev, "Cannot allocate memory for "
			    "port: %d\n", i);
			rv = ENXIO;
			goto out;
		}
	}

	/*
	 * Get PCI interrupt
	 */
	rid = 0;
	sc->irq_res = FUNC0(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->irq_res == NULL) {
		FUNC6(dev, "Cannot allocate IRQ resources\n");
		rv = ENXIO;
		goto out;
	}

	rid = 1;
	sc->msi_irq_res = FUNC0(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC6(dev, "Cannot allocate MSI IRQ resources\n");
		rv = ENXIO;
		goto out;
	}

	sc->ofw_pci.sc_range_mask = 0x3;
	rv = FUNC9(dev);
	if (rv != 0)
		goto out;

	rv = FUNC13(sc, sc->ofw_pci.sc_range,
	    sc->ofw_pci.sc_nrange);
	if (rv != 0)
		goto out;

	if (FUNC2(dev, sc->irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
		    tegra_pci_intr, NULL, sc, &sc->intr_cookie)) {
		FUNC6(dev, "cannot setup interrupt handler\n");
		rv = ENXIO;
		goto out;
	}

	/*
	 * Enable PCIE device.
	 */
	rv = FUNC14(sc);
	if (rv != 0)
		goto out;
	for (i = 0; i < TEGRA_PCIB_MAX_PORTS; i++) {
		if (sc->ports[i] == NULL)
			continue;
		if (sc->ports[i]->enabled)
			FUNC17(sc, i);
		else
			FUNC16(sc, i);
	}

#ifdef TEGRA_PCIB_MSI_ENABLE
	rv = tegra_pcib_attach_msi(dev);
	if (rv != 0)
		 goto out;
#endif
	FUNC4(dev, "pci", -1);

	return (FUNC1(dev));

out:

	return (rv);
}