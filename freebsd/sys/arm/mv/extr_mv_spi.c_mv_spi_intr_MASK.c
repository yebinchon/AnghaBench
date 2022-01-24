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
struct mv_spi_softc {int sc_flags; scalar_t__ sc_written; scalar_t__ sc_len; scalar_t__ sc_read; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int MV_SPI_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct mv_spi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_spi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_spi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv_spi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct mv_spi_softc *sc;

	sc = (struct mv_spi_softc *)arg;
	FUNC0(sc);

	/* Filter stray interrupts. */
	if ((sc->sc_flags & MV_SPI_BUSY) == 0) {
		FUNC1(sc);
		return;
	}

	/* RX */
	FUNC2(sc);

	/* TX */
	FUNC3(sc);

	/* Check for end of transfer. */
	if (sc->sc_written == sc->sc_len && sc->sc_read == sc->sc_len)
		FUNC4(sc->sc_dev);

	FUNC1(sc);
}