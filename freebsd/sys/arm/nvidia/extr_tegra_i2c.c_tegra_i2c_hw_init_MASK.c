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
struct tegra_i2c_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus_freq; int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I2C_CNFG ; 
 int FUNC1 (int) ; 
 int I2C_CNFG_NEW_MASTER_FSM ; 
 int I2C_CNFG_PACKET_MODE_EN ; 
 int /*<<< orphan*/  I2C_CONFIG_LOAD ; 
 int I2C_CONFIG_LOAD_MSTR_CONFIG_LOAD ; 
 int /*<<< orphan*/  I2C_FIFO_CONTROL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  I2C_INTERRUPT_MASK_REGISTER ; 
 int /*<<< orphan*/  I2C_INTERRUPT_STATUS_REGISTER ; 
 scalar_t__ FUNC4 (struct tegra_i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_i2c_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct tegra_i2c_softc *sc)
{
	int rv, timeout;

	/* Reset the core. */
	rv = FUNC7(sc->reset);
	if (rv != 0) {
		FUNC6(sc->dev, "Cannot assert reset\n");
		return (rv);
	}
	FUNC0(10);
	rv = FUNC8(sc->reset);
	if (rv != 0) {
		FUNC6(sc->dev, "Cannot clear reset\n");
		return (rv);
	}

	FUNC5(sc, I2C_INTERRUPT_MASK_REGISTER, 0);
	FUNC5(sc, I2C_INTERRUPT_STATUS_REGISTER, 0xFFFFFFFF);
	FUNC5(sc, I2C_CNFG, I2C_CNFG_NEW_MASTER_FSM | I2C_CNFG_PACKET_MODE_EN |
	    FUNC1(2));

	FUNC10(sc, sc->bus_freq);

	FUNC5(sc, I2C_FIFO_CONTROL, FUNC3(7) |
	    FUNC2(0));

	FUNC5(sc, I2C_CONFIG_LOAD, I2C_CONFIG_LOAD_MSTR_CONFIG_LOAD);
	for (timeout = 1000; timeout > 0; timeout--) {
		if (FUNC4(sc, I2C_CONFIG_LOAD) == 0)
			break;
		FUNC0(10);
	}
	if (timeout <= 0)
		FUNC6(sc->dev, "config load timeouted\n");

	FUNC9(sc);
	return (0);
}