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
struct tegra_i2c_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  I2C_FIFO_CONTROL ; 
 int I2C_FIFO_CONTROL_RX_FIFO_FLUSH ; 
 int I2C_FIFO_CONTROL_TX_FIFO_FLUSH ; 
 int FUNC1 (struct tegra_i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct tegra_i2c_softc *sc)
{
	int timeout;
	uint32_t reg;

	reg = FUNC1(sc, I2C_FIFO_CONTROL);
	reg |= I2C_FIFO_CONTROL_TX_FIFO_FLUSH | I2C_FIFO_CONTROL_RX_FIFO_FLUSH;
	FUNC2(sc, I2C_FIFO_CONTROL, reg);

	timeout = 10;
	while (timeout > 0) {
		reg = FUNC1(sc, I2C_FIFO_CONTROL);
		reg &= I2C_FIFO_CONTROL_TX_FIFO_FLUSH |
		    I2C_FIFO_CONTROL_RX_FIFO_FLUSH;
		if (reg == 0)
			break;
		FUNC0(10);
	}
	if (timeout <= 0) {
		FUNC3(sc->dev, "FIFO flush timedout\n");
		return (ETIMEDOUT);
	}
	return (0);
}