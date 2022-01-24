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
struct bcm_bsc_softc {int sc_flags; scalar_t__ sc_totlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_bsc_softc*) ; 
 int FUNC1 (struct bcm_bsc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BCM_BSC_STATUS ; 
 int BCM_BSC_STATUS_DONE ; 
 int BCM_BSC_STATUS_ERRBITS ; 
 int BCM_BSC_STATUS_RXD ; 
 int BCM_BSC_STATUS_TXD ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_bsc_softc*) ; 
 int BCM_I2C_BUSY ; 
 int BCM_I2C_DONE ; 
 int BCM_I2C_ERROR ; 
 int BCM_I2C_READ ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_bsc_softc*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_bsc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_bsc_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bcm_bsc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_bsc_softc*) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct bcm_bsc_softc *sc;
	uint32_t status;

	sc = (struct bcm_bsc_softc *)arg;

	FUNC0(sc);

	/* The I2C interrupt is shared among all the BSC controllers. */
	if ((sc->sc_flags & BCM_I2C_BUSY) == 0) {
		FUNC2(sc);
		return;
	}

	status = FUNC1(sc, BCM_BSC_STATUS);
	FUNC3(sc, 4, " <intrstatus=0x%08x> ", status);

	/* RXD and DONE can assert together, empty fifo before checking done. */
	if ((sc->sc_flags & BCM_I2C_READ) && (status & BCM_BSC_STATUS_RXD))
		FUNC4(sc);

	/* Check for completion. */
	if (status & (BCM_BSC_STATUS_ERRBITS | BCM_BSC_STATUS_DONE)) {
		sc->sc_flags |= BCM_I2C_DONE;
		if (status & BCM_BSC_STATUS_ERRBITS)
			sc->sc_flags |= BCM_I2C_ERROR;
		/* Disable interrupts. */
		FUNC6(sc);
		FUNC7(sc);
	} else if (!(sc->sc_flags & BCM_I2C_READ)) {
		/*
		 * Don't check for TXD until after determining whether the
		 * transfer is complete; TXD will be asserted along with ERR or
		 * DONE if there is room in the fifo.
		 */
		if ((status & BCM_BSC_STATUS_TXD) && sc->sc_totlen > 0)
			FUNC5(sc);
	}

	FUNC2(sc);
}