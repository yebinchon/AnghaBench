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
struct bcm_spi_softc {int sc_flags; scalar_t__ sc_written; scalar_t__ sc_len; scalar_t__ sc_read; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int BCM_SPI_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_spi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_spi_softc*) ; 
 int /*<<< orphan*/  SPI_CS ; 
 int SPI_CS_INTD ; 
 int SPI_CS_INTR ; 
 int SPI_CS_TA ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_spi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_spi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_spi_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct bcm_spi_softc *sc;

	sc = (struct bcm_spi_softc *)arg;
	FUNC0(sc);

	/* Filter stray interrupts. */
	if ((sc->sc_flags & BCM_SPI_BUSY) == 0) {
		FUNC1(sc);
		return;
	}

	/* TX - Fill up the FIFO. */
	FUNC3(sc);

	/* RX - Drain the FIFO. */
	FUNC2(sc);

	/* Check for end of transfer. */
	if (sc->sc_written == sc->sc_len && sc->sc_read == sc->sc_len) {
		/* Disable interrupts and the SPI engine. */
		FUNC4(sc, SPI_CS,
		    SPI_CS_TA | SPI_CS_INTR | SPI_CS_INTD, 0);
		FUNC5(sc->sc_dev);
	}

	FUNC1(sc);
}