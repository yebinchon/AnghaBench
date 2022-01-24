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
struct ti_spi_softc {scalar_t__ sc_written; scalar_t__ sc_len; scalar_t__ sc_read; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCSPI_IRQSTATUS ; 
 int MCSPI_IRQ_EOW ; 
 int MCSPI_IRQ_RX0_FULL ; 
 int MCSPI_IRQ_TX0_EMPTY ; 
 int /*<<< orphan*/  TI_SPI_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct ti_spi_softc*) ; 
 int FUNC1 (struct ti_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_spi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ti_spi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_spi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	int eow;
	struct ti_spi_softc *sc;
	uint32_t status;

	eow = 0;
	sc = (struct ti_spi_softc *)arg;
	FUNC0(sc);
	status = FUNC1(sc, MCSPI_IRQSTATUS);

	/*
	 * No new TX_empty or RX_full event will be asserted while the CPU has
	 * not performed the number of writes or reads defined by
	 * MCSPI_XFERLEVEL[AEL] and MCSPI_XFERLEVEL[AFL].  It is responsibility
	 * of CPU perform the right number of writes and reads.
	 */
	if (status & MCSPI_IRQ_TX0_EMPTY)
		FUNC5(sc);
	if (status & MCSPI_IRQ_RX0_FULL)
		FUNC4(sc);

	if (status & MCSPI_IRQ_EOW)
		eow = 1;
		
	/* Clear interrupt status. */
	FUNC3(sc, MCSPI_IRQSTATUS, status);

	/* Check for end of transfer. */
	if (sc->sc_written == sc->sc_len && sc->sc_read == sc->sc_len) {
		sc->sc_flags |= TI_SPI_DONE;
		FUNC6(sc->sc_dev);
	}

	FUNC2(sc);
}