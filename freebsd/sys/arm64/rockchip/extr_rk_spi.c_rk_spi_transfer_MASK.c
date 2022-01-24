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
typedef  int /*<<< orphan*/  uint32_t ;
struct spi_command {int /*<<< orphan*/  tx_data_sz; int /*<<< orphan*/  tx_data; int /*<<< orphan*/  rx_data; int /*<<< orphan*/  tx_cmd_sz; int /*<<< orphan*/  tx_cmd; int /*<<< orphan*/  rx_cmd; } ;
struct rk_spi_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rk_spi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rk_spi_softc*) ; 
 struct rk_spi_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rk_spi_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rk_spi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rk_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct rk_spi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(device_t dev, device_t child, struct spi_command *cmd)
{
	struct rk_spi_softc *sc;
	uint32_t cs, mode, clock;
	int err = 0;

	sc = FUNC2(dev);

	FUNC8(child, &cs);
	FUNC7(child, &clock);
	FUNC9(child, &mode);

	FUNC0(sc);
	FUNC4(sc, mode, clock);
	FUNC3(sc, 1);
	err = FUNC5(sc, cs, true);
	if (err != 0) {
		FUNC3(sc, 0);
		FUNC1(sc);
		return (err);
	}

	/* Transfer command then data bytes. */
	err = 0;
	if (cmd->tx_cmd_sz > 0)
		err = FUNC6(sc, cmd->rx_cmd, cmd->tx_cmd,
		    cmd->tx_cmd_sz);
	if (cmd->tx_data_sz > 0 && err == 0)
		err = FUNC6(sc, cmd->rx_data, cmd->tx_data,
		    cmd->tx_data_sz);

	FUNC5(sc, cs, false);
	FUNC3(sc, 0);
	FUNC1(sc);

	return (err);
}