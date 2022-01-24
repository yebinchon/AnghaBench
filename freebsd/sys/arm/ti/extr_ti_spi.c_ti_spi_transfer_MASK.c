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
struct ti_spi_softc {int sc_numcs; int sc_flags; int sc_cs; scalar_t__ sc_len; int sc_fifolvl; scalar_t__ sc_written; scalar_t__ sc_read; struct spi_command* sc_cmd; int /*<<< orphan*/  sc_mtx; } ;
struct spi_command {scalar_t__ tx_cmd_sz; scalar_t__ rx_cmd_sz; scalar_t__ tx_data_sz; scalar_t__ rx_data_sz; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MCSPI_CONF_DMAR ; 
 int MCSPI_CONF_DMAW ; 
 int MCSPI_CONF_DPE0 ; 
 int MCSPI_CONF_DPE1 ; 
 int MCSPI_CONF_EPOL ; 
 int MCSPI_CONF_FFER ; 
 int MCSPI_CONF_FFEW ; 
 int MCSPI_CONF_FORCE ; 
 int MCSPI_CONF_IS ; 
 int MCSPI_CONF_SBE ; 
 int MCSPI_CONF_SBPOL ; 
 int MCSPI_CONF_TURBO ; 
 int MCSPI_CONF_WL8BITS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MCSPI_CTRL_ENABLE ; 
 int /*<<< orphan*/  MCSPI_IRQENABLE ; 
 int /*<<< orphan*/  MCSPI_IRQSTATUS ; 
 int /*<<< orphan*/  MCSPI_XFERLEVEL ; 
 int SPIBUS_CS_HIGH ; 
 int TI_SPI_BUSY ; 
 int /*<<< orphan*/  TI_SPI_FIFOSZ ; 
 int /*<<< orphan*/  FUNC3 (struct ti_spi_softc*) ; 
 int FUNC4 (struct ti_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_spi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ti_spi_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int*) ; 
 int FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct ti_spi_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct ti_spi_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(device_t dev, device_t child, struct spi_command *cmd)
{
	int err;
	struct ti_spi_softc *sc;
	uint32_t clockhz, cs, mode, reg;

	sc = FUNC8(dev);

	FUNC0(cmd->tx_cmd_sz == cmd->rx_cmd_sz, 
	    ("TX/RX command sizes should be equal"));
	FUNC0(cmd->tx_data_sz == cmd->rx_data_sz, 
	    ("TX/RX data sizes should be equal"));

	/* Get the proper chip select for this child. */
	FUNC12(child, &cs);
	FUNC11(child, &clockhz);
	FUNC13(child, &mode);

	cs &= ~SPIBUS_CS_HIGH;

	if (cs > sc->sc_numcs) {
		FUNC9(dev, "Invalid chip select %d requested by %s\n",
		    cs, FUNC7(child));
		return (EINVAL);
	}

	if (mode > 3)
	{
	    FUNC9(dev, "Invalid mode %d requested by %s\n", mode,
		    FUNC7(child));
	    return (EINVAL);
	}

	FUNC3(sc);

	/* If the controller is in use wait until it is available. */
	while (sc->sc_flags & TI_SPI_BUSY)
		FUNC10(dev, &sc->sc_mtx, 0, "ti_spi", 0);

	/* Now we have control over SPI controller. */
	sc->sc_flags = TI_SPI_BUSY;

	/* Save the SPI command data. */
	sc->sc_cs = cs;
	sc->sc_cmd = cmd;
	sc->sc_read = 0;
	sc->sc_written = 0;
	sc->sc_len = cmd->tx_cmd_sz + cmd->tx_data_sz;
	sc->sc_fifolvl = FUNC14(sc->sc_len, TI_SPI_FIFOSZ);
	if (sc->sc_fifolvl < 2 || sc->sc_len > 0xffff)
		sc->sc_fifolvl = 1;	/* FIFO disabled. */
	/* Disable FIFO for now. */
	sc->sc_fifolvl = 1;

	/* Set the bus frequency. */
	FUNC16(sc, sc->sc_cs, clockhz);

	/* Disable the FIFO. */
	FUNC6(sc, MCSPI_XFERLEVEL, 0);

	/* 8 bits word, d0 miso, d1 mosi, mode 0 and CS active low. */
	reg = FUNC4(sc, FUNC1(sc->sc_cs));
	reg &= ~(MCSPI_CONF_FFER | MCSPI_CONF_FFEW | MCSPI_CONF_SBPOL |
	    MCSPI_CONF_SBE | MCSPI_CONF_TURBO | MCSPI_CONF_IS |
	    MCSPI_CONF_DPE1 | MCSPI_CONF_DPE0 | MCSPI_CONF_DMAR |
	    MCSPI_CONF_DMAW | MCSPI_CONF_EPOL);
	reg |= MCSPI_CONF_DPE0 | MCSPI_CONF_EPOL | MCSPI_CONF_WL8BITS;
	reg |= mode; /* POL and PHA are the low bits, we can just OR-in mode */
	FUNC6(sc, FUNC1(sc->sc_cs), reg);

#if 0
	/* Enable channel interrupts. */
	reg = TI_SPI_READ(sc, MCSPI_IRQENABLE);
	reg |= 0xf;
	TI_SPI_WRITE(sc, MCSPI_IRQENABLE, reg);
#endif

	/* Start the transfer. */
	reg = FUNC4(sc, FUNC2(sc->sc_cs));
	FUNC6(sc, FUNC2(sc->sc_cs), reg | MCSPI_CTRL_ENABLE);

	/* Force CS on. */
	reg = FUNC4(sc, FUNC1(sc->sc_cs));
	FUNC6(sc, FUNC1(sc->sc_cs), reg |= MCSPI_CONF_FORCE);

	err = 0;
	if (sc->sc_fifolvl == 1)
		err = FUNC15(sc);

	/* Force CS off. */
	reg = FUNC4(sc, FUNC1(sc->sc_cs));
	reg &= ~MCSPI_CONF_FORCE;
	FUNC6(sc, FUNC1(sc->sc_cs), reg);

	/* Disable IRQs. */
	reg = FUNC4(sc, MCSPI_IRQENABLE);
	reg &= ~0xf;
	FUNC6(sc, MCSPI_IRQENABLE, reg);
	FUNC6(sc, MCSPI_IRQSTATUS, 0xf);

	/* Disable the SPI channel. */
	reg = FUNC4(sc, FUNC2(sc->sc_cs));
	reg &= ~MCSPI_CTRL_ENABLE;
	FUNC6(sc, FUNC2(sc->sc_cs), reg);

	/* Disable FIFO. */
	reg = FUNC4(sc, FUNC1(sc->sc_cs));
	reg &= ~(MCSPI_CONF_FFER | MCSPI_CONF_FFEW);
	FUNC6(sc, FUNC1(sc->sc_cs), reg);

	/* Release the controller and wakeup the next thread waiting for it. */
	sc->sc_flags = 0;
	FUNC17(dev);
	FUNC5(sc);

	return (err);
}