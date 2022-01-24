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
struct spi_softc {int intreg; int debug; scalar_t__ txidx; scalar_t__ txlen; scalar_t__ fifocnt; int /*<<< orphan*/  mtx; int /*<<< orphan*/  dev; int /*<<< orphan*/  rxidx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECSPI_INTREG ; 
 int /*<<< orphan*/  ECSPI_STATREG ; 
 int INTREG_RREN ; 
 int INTREG_TCEN ; 
 int INTREG_TEEN ; 
 int FUNC0 (struct spi_softc*,int /*<<< orphan*/ ) ; 
 int SREG_RO ; 
 int SREG_RR ; 
 int SREG_TC ; 
 int SREG_TDR ; 
 int SREG_TE ; 
 int /*<<< orphan*/  FUNC1 (struct spi_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_softc*) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct spi_softc *sc = arg;
	uint32_t intreg, status;

	FUNC4(&sc->mtx);

	sc = arg;
	intreg = sc->intreg;
	status = FUNC0(sc, ECSPI_STATREG);
	FUNC1(sc, ECSPI_STATREG, status); /* Clear w1c bits. */

	/*
	 * If we get an overflow error, just signal that the transfer is done
	 * and wakeup the waiting thread, which will see that txidx != txlen and
	 * return an IO error to the caller.
	 */
	if (FUNC2(status & SREG_RO)) {
		if (sc->debug || bootverbose) {
			FUNC3(sc->dev, "rxoverflow rxidx %u txidx %u\n",
			    sc->rxidx, sc->txidx);
		}
		sc->intreg = 0;
		FUNC8(sc);
		FUNC5(&sc->mtx);
		return;
	}

	if (status & SREG_RR)
		FUNC6(sc);

	if (status & SREG_TDR)
		FUNC7(sc);

	/*
	 * If we're out of bytes to send...
	 *  - If Transfer Complete is set (shift register is empty) and we've
	 *    received everything we expect, we're all done.
	 *  - Else if Tx Fifo Empty is set, we need to stop waiting for that and
	 *    switch to waiting for Transfer Complete (wait for shift register
	 *    to empty out), and also for Receive Ready (last of incoming data).
	 */
	if (sc->txidx == sc->txlen) {
		if ((status & SREG_TC) && sc->fifocnt == 0) {
			sc->intreg = 0;
			FUNC8(sc);
		} else if (status & SREG_TE) {
			sc->intreg &= ~(sc->intreg & ~INTREG_TEEN);
			sc->intreg |= INTREG_TCEN | INTREG_RREN;
		}
	}

	/*
	 * If interrupt flags changed, write the new flags to the hardware and
	 * do a dummy readback to ensure the changes reach the hardware before
	 * we exit the isr.
	 */
	if (sc->intreg != intreg) {
		FUNC1(sc, ECSPI_INTREG, sc->intreg);
		(void)FUNC0(sc, ECSPI_INTREG);
	}

	if (sc->debug >= 3) {
		FUNC3(sc->dev,
		    "spi_intr, sreg 0x%08x intreg was 0x%08x now 0x%08x\n",
		    status, intreg, sc->intreg);
	}

	FUNC5(&sc->mtx);
}