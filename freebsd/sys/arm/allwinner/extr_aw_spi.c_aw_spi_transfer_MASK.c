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
struct spi_command {int /*<<< orphan*/  rx_data_sz; int /*<<< orphan*/  tx_data_sz; int /*<<< orphan*/  tx_data; int /*<<< orphan*/  rx_data; int /*<<< orphan*/  rx_cmd_sz; int /*<<< orphan*/  tx_cmd_sz; int /*<<< orphan*/  tx_cmd; int /*<<< orphan*/  rx_cmd; } ;
struct aw_spi_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/  mod_freq; int /*<<< orphan*/  clk_mod; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AW_SPI_GCR ; 
 int AW_SPI_GCR_EN ; 
 int AW_SPI_GCR_SRST ; 
 int AW_SPI_MAX_CS ; 
 int FUNC0 (struct aw_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aw_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CLK_SET_ROUND_DOWN ; 
 int EINVAL ; 
 int SPIBUS_CS_HIGH ; 
 int /*<<< orphan*/  FUNC2 (struct aw_spi_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aw_spi_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aw_spi_softc*,int) ; 
 int FUNC5 (struct aw_spi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct aw_spi_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC15(device_t dev, device_t child, struct spi_command *cmd)
{
	struct aw_spi_softc *sc;
	uint32_t cs, mode, clock, reg;
	int err = 0;

	sc = FUNC8(dev);

	FUNC13(child, &cs);
	FUNC12(child, &clock);
	FUNC14(child, &mode);

	/* The minimum divider is 2 so set the clock at twice the needed speed */
	FUNC7(sc->clk_mod, 2 * clock, CLK_SET_ROUND_DOWN);
	FUNC6(sc->clk_mod, &sc->mod_freq);
	if (cs >= AW_SPI_MAX_CS) {
		FUNC9(dev, "Invalid cs %d\n", cs);
		return (EINVAL);
	}

	FUNC10(&sc->mtx);

	/* Enable and reset the module */
	reg = FUNC0(sc, AW_SPI_GCR);
	reg |= AW_SPI_GCR_EN | AW_SPI_GCR_SRST;
	FUNC1(sc, AW_SPI_GCR, reg);

	/* Setup clock, CS and mode */
	FUNC2(sc, clock);
	FUNC4(sc, mode);
	if (cs & SPIBUS_CS_HIGH)
		FUNC3(sc, cs, false);
	else
		FUNC3(sc, cs, true);

	/* xfer */
	err = 0;
	if (cmd->tx_cmd_sz > 0)
		err = FUNC5(sc, cmd->rx_cmd, cmd->tx_cmd,
		    cmd->tx_cmd_sz, cmd->rx_cmd_sz);
	if (cmd->tx_data_sz > 0 && err == 0)
		err = FUNC5(sc, cmd->rx_data, cmd->tx_data,
		    cmd->tx_data_sz, cmd->rx_data_sz);

	if (cs & SPIBUS_CS_HIGH)
		FUNC3(sc, cs, true);
	else
		FUNC3(sc, cs, false);

	/* Disable the module */
	reg = FUNC0(sc, AW_SPI_GCR);
	reg &= ~AW_SPI_GCR_EN;
	FUNC1(sc, AW_SPI_GCR, reg);

	FUNC11(&sc->mtx);

	return (err);
}