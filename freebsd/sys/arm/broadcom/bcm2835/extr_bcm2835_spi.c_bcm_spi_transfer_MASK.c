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
struct spi_command {scalar_t__ tx_cmd_sz; scalar_t__ rx_cmd_sz; scalar_t__ tx_data_sz; scalar_t__ rx_data_sz; } ;
struct bcm_spi_softc {int sc_flags; scalar_t__ sc_len; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_mtx; scalar_t__ sc_written; scalar_t__ sc_read; struct spi_command* sc_cmd; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BCM_SPI_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_spi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_spi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int EIO ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int SPIBUS_CS_HIGH ; 
 int SPIBUS_MODE_CPHA ; 
 int SPIBUS_MODE_CPOL ; 
 int /*<<< orphan*/  SPI_CLK ; 
 int SPI_CORE_CLK ; 
 int /*<<< orphan*/  SPI_CS ; 
 int SPI_CS_CLEAR_RXFIFO ; 
 int SPI_CS_CLEAR_TXFIFO ; 
 int SPI_CS_CPHA ; 
 int SPI_CS_CPOL ; 
 int SPI_CS_CSPOL0 ; 
 int SPI_CS_CSPOL1 ; 
 int SPI_CS_CSPOL2 ; 
 int SPI_CS_INTD ; 
 int SPI_CS_INTR ; 
 int SPI_CS_MASK ; 
 int SPI_CS_TA ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_spi_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct bcm_spi_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int hz ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev, device_t child, struct spi_command *cmd)
{
	struct bcm_spi_softc *sc;
	uint32_t cs, mode, clock;
	int err;

	sc = FUNC6(dev);

	FUNC3(cmd->tx_cmd_sz == cmd->rx_cmd_sz, 
	    ("TX/RX command sizes should be equal"));
	FUNC3(cmd->tx_data_sz == cmd->rx_data_sz, 
	    ("TX/RX data sizes should be equal"));

	/* Get the bus speed, mode, and chip select for this child. */

	FUNC10(child, &cs);
	if ((cs & (~SPIBUS_CS_HIGH)) > 2) {
		FUNC7(dev,
		    "Invalid chip select %u requested by %s\n", cs,
		    FUNC5(child));
		return (EINVAL);
	}

	FUNC9(child, &clock);
	if (clock == 0) {
		FUNC7(dev,
		    "Invalid clock %uHz requested by %s\n", clock,
		    FUNC5(child));
		return (EINVAL);
	}

	FUNC11(child, &mode);
	if (mode > 3) {
		FUNC7(dev,
		    "Invalid mode %u requested by %s\n", mode,
		    FUNC5(child));
		return (EINVAL);
	}

	/* If the controller is in use wait until it is available. */
	FUNC0(sc);
	while (sc->sc_flags & BCM_SPI_BUSY)
		FUNC8(dev, &sc->sc_mtx, 0, "bcm_spi", 0);

	/* Now we have control over SPI controller. */
	sc->sc_flags = BCM_SPI_BUSY;

	/* Clear the FIFO. */
	FUNC4(sc, SPI_CS,
	    SPI_CS_CLEAR_RXFIFO | SPI_CS_CLEAR_TXFIFO,
	    SPI_CS_CLEAR_RXFIFO | SPI_CS_CLEAR_TXFIFO);

	/* Save a pointer to the SPI command. */
	sc->sc_cmd = cmd;
	sc->sc_read = 0;
	sc->sc_written = 0;
	sc->sc_len = cmd->tx_cmd_sz + cmd->tx_data_sz;

#ifdef	BCM2835_SPI_USE_CS_HIGH /* TODO: for when behavior is correct */
	/*
	 * Assign CS polarity first, while the CS indicates 'inactive'.
	 * This will need to set the correct polarity bit based on the 'cs', and
	 * the polarity bit will remain in this state, even after the transaction
	 * is complete.
	 */
	if((cs & ~SPIBUS_CS_HIGH) == 0) {
		bcm_spi_modifyreg(sc, SPI_CS,
		    SPI_CS_CSPOL0,
		    ((cs & (SPIBUS_CS_HIGH)) ? SPI_CS_CSPOL0 : 0));
	}
	else if((cs & ~SPIBUS_CS_HIGH) == 1) {
		bcm_spi_modifyreg(sc, SPI_CS,
		    SPI_CS_CSPOL1,
		    ((cs & (SPIBUS_CS_HIGH)) ? SPI_CS_CSPOL1 : 0));
	}
	else if((cs & ~SPIBUS_CS_HIGH) == 2) {
		bcm_spi_modifyreg(sc, SPI_CS,
		    SPI_CS_CSPOL2,
		    ((cs & (SPIBUS_CS_HIGH)) ? SPI_CS_CSPOL2 : 0));
	}
#endif

	/*
	 * Set the mode in 'SPI_CS' (clock phase and polarity bits).
	 * This must happen before CS output pin is active.
	 * Otherwise, you might glitch and drop the first bit.
	 */
	FUNC4(sc, SPI_CS,
	    SPI_CS_CPOL | SPI_CS_CPHA,
	    ((mode & SPIBUS_MODE_CPHA) ? SPI_CS_CPHA : 0) |
	    ((mode & SPIBUS_MODE_CPOL) ? SPI_CS_CPOL : 0));

	/*
	 * Set the clock divider in 'SPI_CLK - see 'bcm_spi_clock_proc()'.
	 */

	/* calculate 'clock' as a divider value from freq */
	clock = SPI_CORE_CLK / clock;
	if (clock <= 1)
		clock = 2;
	else if (clock % 2)
		clock--;
	if (clock > 0xffff)
		clock = 0;

	FUNC2(sc, SPI_CLK, clock);

	/*
	 * Set the CS for this transaction, enable interrupts and announce
	 * we're ready to tx.  This will kick off the first interrupt.
	 */
	FUNC4(sc, SPI_CS,
	    SPI_CS_MASK | SPI_CS_TA | SPI_CS_INTR | SPI_CS_INTD,
	    (cs & (~SPIBUS_CS_HIGH)) | /* cs is the lower 2 bits of the reg */
	    SPI_CS_TA | SPI_CS_INTR | SPI_CS_INTD);

	/* Wait for the transaction to complete. */
	err = FUNC8(dev, &sc->sc_mtx, 0, "bcm_spi", hz * 2);

	/* Make sure the SPI engine and interrupts are disabled. */
	FUNC4(sc, SPI_CS, SPI_CS_TA | SPI_CS_INTR | SPI_CS_INTD, 0);

	/* Release the controller and wakeup the next thread waiting for it. */
	sc->sc_flags = 0;
	FUNC12(dev);
	FUNC1(sc);

	/*
	 * Check for transfer timeout.  The SPI controller doesn't
	 * return errors.
	 */
	if (err == EWOULDBLOCK) {
		FUNC7(sc->sc_dev, "SPI error (timeout)\n");
		err = EIO;
	}

	return (err);
}