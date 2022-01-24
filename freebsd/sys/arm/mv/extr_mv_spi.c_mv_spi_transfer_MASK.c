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
struct mv_spi_softc {int sc_flags; int sc_written; scalar_t__ sc_len; scalar_t__ sc_read; struct spi_command* sc_cmd; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int MV_SPI_BUSY ; 
 int /*<<< orphan*/  MV_SPI_CONF ; 
 int MV_SPI_CONF_CLOCK_MASK ; 
 int MV_SPI_CONF_CLOCK_SPPRHI_MASK ; 
 int MV_SPI_CONF_CLOCK_SPPRHI_SHIFT ; 
 int MV_SPI_CONF_CLOCK_SPPR_MASK ; 
 int MV_SPI_CONF_CLOCK_SPPR_SHIFT ; 
 int MV_SPI_CONF_CLOCK_SPR_MASK ; 
 int MV_SPI_CONF_MODE_MASK ; 
 int MV_SPI_CONF_MODE_SHIFT ; 
 int /*<<< orphan*/  MV_SPI_CONTROL ; 
 int MV_SPI_CTRL_CS_ACTIVE ; 
 int MV_SPI_CTRL_CS_MASK ; 
 int MV_SPI_CTRL_CS_SHIFT ; 
 int MV_SPI_CTRL_SMEMREADY ; 
 int /*<<< orphan*/  MV_SPI_INTR_MASK ; 
 int /*<<< orphan*/  MV_SPI_INTR_STAT ; 
 int /*<<< orphan*/  FUNC2 (struct mv_spi_softc*) ; 
 int FUNC3 (struct mv_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mv_spi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mv_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int SPIBUS_CS_HIGH ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct mv_spi_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct mv_spi_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct mv_spi_softc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(device_t dev, device_t child, struct spi_command *cmd)
{
	struct mv_spi_softc *sc;
	uint32_t clock, cs, mode, reg, spr, sppr;
	int resid, timeout;

	FUNC1(cmd->tx_cmd_sz == cmd->rx_cmd_sz,
	    ("TX/RX command sizes should be equal"));
	FUNC1(cmd->tx_data_sz == cmd->rx_data_sz,
	    ("TX/RX data sizes should be equal"));

	/* Get the proper chip select, mode and clock for this transfer. */
	FUNC14(child, &cs);
	cs &= ~SPIBUS_CS_HIGH;
	FUNC15(child, &mode);
	if (mode > 3) {
		FUNC8(dev,
		    "Invalid mode %u requested by %s\n", mode,
		    FUNC6(child));
		return (EINVAL);
	}
	FUNC13(child, &clock);
	if (clock == 0 || FUNC10(clock, &spr, &sppr) != 0) {
		FUNC8(dev,
		    "Invalid clock %uHz requested by %s\n", clock,
		    FUNC6(child));
		return (EINVAL);
	}

	sc = FUNC7(dev);
	FUNC2(sc);

	/* Wait until the controller is free. */
	while (sc->sc_flags & MV_SPI_BUSY)
		FUNC9(dev, &sc->sc_mtx, 0, "mv_spi", 0);

	/* Now we have control over SPI controller. */
	sc->sc_flags = MV_SPI_BUSY;

	/* Save a pointer to the SPI command. */
	sc->sc_cmd = cmd;
	sc->sc_read = 0;
	sc->sc_written = 0;
	sc->sc_len = cmd->tx_cmd_sz + cmd->tx_data_sz;

	/* Set SPI Mode and Clock. */
	reg = FUNC3(sc, MV_SPI_CONF);
	reg &= ~(MV_SPI_CONF_MODE_MASK | MV_SPI_CONF_CLOCK_MASK);
	reg |= mode << MV_SPI_CONF_MODE_SHIFT;
	reg |= spr & MV_SPI_CONF_CLOCK_SPR_MASK;
	reg |= (sppr & MV_SPI_CONF_CLOCK_SPPR_MASK) <<
	    MV_SPI_CONF_CLOCK_SPPR_SHIFT;
	reg |= (sppr & MV_SPI_CONF_CLOCK_SPPRHI_MASK) <<
	    MV_SPI_CONF_CLOCK_SPPRHI_SHIFT;
	FUNC5(sc, MV_SPI_CONTROL, reg);

	/* Set CS number and assert CS. */
	reg = (cs & MV_SPI_CTRL_CS_MASK) << MV_SPI_CTRL_CS_SHIFT;
	FUNC5(sc, MV_SPI_CONTROL, reg);
	reg = FUNC3(sc, MV_SPI_CONTROL);
	FUNC5(sc, MV_SPI_CONTROL, reg | MV_SPI_CTRL_CS_ACTIVE);

	while ((resid = sc->sc_len - sc->sc_written) > 0) {

		FUNC5(sc, MV_SPI_INTR_STAT, 0);

		/*
		 * Write to start the transmission and read the byte
		 * back when ready.
		 */
		FUNC12(sc);
		timeout = 1000;
		while (--timeout > 0) {
			reg = FUNC3(sc, MV_SPI_CONTROL);
			if (reg & MV_SPI_CTRL_SMEMREADY)
				break;
			FUNC0(1);
		}
		if (timeout == 0)
			break;
		FUNC11(sc);
	}

	/* Stop the controller. */
	reg = FUNC3(sc, MV_SPI_CONTROL);
	FUNC5(sc, MV_SPI_CONTROL, reg & ~MV_SPI_CTRL_CS_ACTIVE);
	FUNC5(sc, MV_SPI_INTR_MASK, 0);
	FUNC5(sc, MV_SPI_INTR_STAT, 0);

	/* Release the controller and wakeup the next thread waiting for it. */
	sc->sc_flags = 0;
	FUNC16(dev);
	FUNC4(sc);

	/*
	 * Check for transfer timeout.  The SPI controller doesn't
	 * return errors.
	 */
	return ((timeout == 0) ? EIO : 0);
}