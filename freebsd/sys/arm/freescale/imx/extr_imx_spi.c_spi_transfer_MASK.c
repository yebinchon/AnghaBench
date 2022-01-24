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
typedef  size_t uint32_t ;
struct spi_softc {int debug; int /*<<< orphan*/  mtx; int /*<<< orphan*/  dev; int /*<<< orphan*/ ** cspins; } ;
struct spi_command {int /*<<< orphan*/  tx_data_sz; int /*<<< orphan*/  tx_data; int /*<<< orphan*/  rx_data; int /*<<< orphan*/  tx_cmd_sz; int /*<<< orphan*/  tx_cmd; int /*<<< orphan*/  rx_cmd; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 size_t CS_MAX ; 
 int /*<<< orphan*/  ECSPI_CTLREG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct spi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct spi_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_softc*,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_softc*,size_t,int) ; 
 int FUNC9 (struct spi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int
FUNC13(device_t dev, device_t child, struct spi_command *cmd)
{
	struct spi_softc *sc = FUNC2(dev);
	uint32_t cs, mode, clock;
	int err;

	FUNC11(child, &cs);
	FUNC10(child, &clock);
	FUNC12(child, &mode);

	if (cs > CS_MAX || sc->cspins[cs] == NULL) {
		if (sc->debug || bootverbose)
			FUNC3(sc->dev, "Invalid chip select %u\n", cs);
		return (EINVAL);
	}

	FUNC5(&sc->mtx);
	FUNC1(sc->dev);

	if (sc->debug >= 1) {
		FUNC3(sc->dev,
		    "spi_transfer, cs 0x%x clock %u mode %u\n",
		    cs, clock, mode);
	}

	/* Set up the hardware and select the device. */
	FUNC7(sc, cs, mode, clock);
	FUNC8(sc, cs, true);

	/* Transfer command then data bytes. */
	err = 0;
	if (cmd->tx_cmd_sz > 0)
		err = FUNC9(sc, cmd->rx_cmd, cmd->tx_cmd,
		    cmd->tx_cmd_sz);
	if (cmd->tx_data_sz > 0 && err == 0)
		err = FUNC9(sc, cmd->rx_data, cmd->tx_data,
		    cmd->tx_data_sz);

	/* Deselect the device, turn off (and reset) hardware. */
	FUNC8(sc, cs, false);
	FUNC0(sc, ECSPI_CTLREG, 0);

	FUNC4(sc->dev);
	FUNC6(&sc->mtx);

	return (err);
}