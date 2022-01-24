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
struct mv_spi_softc {int /*<<< orphan*/  sc_mtx; void* sc_mem_res; void* sc_irq_res; int /*<<< orphan*/  sc_intrhand; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  ich_func_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MV_SPI_CONF ; 
 int MV_SPI_CONF_BYTELEN ; 
 int /*<<< orphan*/  MV_SPI_CONTROL ; 
 int MV_SPI_CTRL_CS_ACTIVE ; 
 int /*<<< orphan*/  MV_SPI_INTR_MASK ; 
 int /*<<< orphan*/  MV_SPI_INTR_STAT ; 
 int FUNC0 (struct mv_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ bus_generic_attach ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mv_spi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 struct mv_spi_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mv_spi_intr ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct mv_spi_softc *sc;
	int rid;
	uint32_t reg;

	sc = FUNC7(dev);
	sc->sc_dev = dev;

	rid = 0;
	sc->sc_mem_res = FUNC2(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC8(dev, "cannot allocate memory window\n");
		return (ENXIO);
	}

	sc->sc_bst = FUNC11(sc->sc_mem_res);
	sc->sc_bsh = FUNC10(sc->sc_mem_res);

	rid = 0;
	sc->sc_irq_res = FUNC2(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (!sc->sc_irq_res) {
		FUNC3(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC8(dev, "cannot allocate interrupt\n");
		return (ENXIO);
	}

	/* Deactivate the bus - just in case... */
	reg = FUNC0(sc, MV_SPI_CONTROL);
	FUNC1(sc, MV_SPI_CONTROL, reg & ~MV_SPI_CTRL_CS_ACTIVE);

	/* Disable the two bytes FIFO. */
	reg = FUNC0(sc, MV_SPI_CONF);
	FUNC1(sc, MV_SPI_CONF, reg & ~MV_SPI_CONF_BYTELEN);

	/* Clear and disable interrupts. */
	FUNC1(sc, MV_SPI_INTR_MASK, 0);
	FUNC1(sc, MV_SPI_INTR_STAT, 0);

	/* Hook up our interrupt handler. */
	if (FUNC4(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, mv_spi_intr, sc, &sc->sc_intrhand)) {
		FUNC3(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
		FUNC3(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC8(dev, "cannot setup the interrupt handler\n");
		return (ENXIO);
	}

	FUNC9(&sc->sc_mtx, "mv_spi", NULL, MTX_DEF);

	FUNC6(dev, "spibus", -1);

	/* Probe and attach the spibus when interrupts are available. */
	FUNC5((ich_func_t)bus_generic_attach, dev);

	return (0);
}