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
struct bcm_spi_softc {int /*<<< orphan*/  sc_mtx; void* sc_mem_res; void* sc_irq_res; int /*<<< orphan*/  sc_intrhand; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SPI_CS ; 
 int SPI_CS_CLEAR_RXFIFO ; 
 int SPI_CS_CLEAR_TXFIFO ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  bcm_spi_intr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_spi_softc*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bcm_spi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 struct bcm_spi_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct bcm_spi_softc *sc;
	int rid;

	if (FUNC9(dev) != 0) {
		FUNC10(dev, "only one SPI controller supported\n");
		return (ENXIO);
	}

	sc = FUNC8(dev);
	sc->sc_dev = dev;

	rid = 0;
	sc->sc_mem_res = FUNC3(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC10(dev, "cannot allocate memory window\n");
		return (ENXIO);
	}

	sc->sc_bst = FUNC13(sc->sc_mem_res);
	sc->sc_bsh = FUNC12(sc->sc_mem_res);

	rid = 0;
	sc->sc_irq_res = FUNC3(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (!sc->sc_irq_res) {
		FUNC5(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC10(dev, "cannot allocate interrupt\n");
		return (ENXIO);
	}

	/* Hook up our interrupt handler. */
	if (FUNC6(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, bcm_spi_intr, sc, &sc->sc_intrhand)) {
		FUNC5(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
		FUNC5(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC10(dev, "cannot setup the interrupt handler\n");
		return (ENXIO);
	}

	FUNC11(&sc->sc_mtx, "bcm_spi", NULL, MTX_DEF);

	/* Add sysctl nodes. */
	FUNC2(sc);

#ifdef	BCM_SPI_DEBUG
	bcm_spi_printr(dev);
#endif

	/*
	 * Enable the SPI controller.  Clear the rx and tx FIFO.
	 * Defaults to SPI mode 0.
	 */
	FUNC0(sc, SPI_CS, SPI_CS_CLEAR_RXFIFO | SPI_CS_CLEAR_TXFIFO);

#ifdef	BCM_SPI_DEBUG
	bcm_spi_printr(dev);
#endif

	FUNC7(dev, "spibus", -1);

	return (FUNC4(dev));
}