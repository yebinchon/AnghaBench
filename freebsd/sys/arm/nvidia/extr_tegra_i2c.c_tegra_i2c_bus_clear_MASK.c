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
 int /*<<< orphan*/  I2C_BUS_CLEAR_CONFIG ; 
 int I2C_BUS_CLEAR_CONFIG_BC_ENABLE ; 
 int FUNC1 (int) ; 
 int I2C_BUS_CLEAR_CONFIG_BC_STOP_COND ; 
 int I2C_BUS_CLEAR_CONFIG_BC_TERMINATE ; 
 int /*<<< orphan*/  I2C_BUS_CLEAR_STATUS ; 
 int I2C_BUS_CLEAR_STATUS_BC_STATUS ; 
 int /*<<< orphan*/  I2C_CONFIG_LOAD ; 
 int I2C_CONFIG_LOAD_MSTR_CONFIG_LOAD ; 
 int FUNC2 (struct tegra_i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(struct tegra_i2c_softc *sc)
{
	int timeout;
	uint32_t reg, status;

	FUNC3(sc, I2C_BUS_CLEAR_CONFIG,
	    FUNC1(18) |
	    I2C_BUS_CLEAR_CONFIG_BC_STOP_COND |
	    I2C_BUS_CLEAR_CONFIG_BC_TERMINATE);

	FUNC3(sc, I2C_CONFIG_LOAD, I2C_CONFIG_LOAD_MSTR_CONFIG_LOAD);
	for (timeout = 1000; timeout > 0; timeout--) {
		if (FUNC2(sc, I2C_CONFIG_LOAD) == 0)
			break;
		FUNC0(10);
	}
	if (timeout <= 0)
		FUNC4(sc->dev, "config load timeouted\n");
	reg = FUNC2(sc, I2C_BUS_CLEAR_CONFIG);
	reg |= I2C_BUS_CLEAR_CONFIG_BC_ENABLE;
	FUNC3(sc, I2C_BUS_CLEAR_CONFIG,reg);

	for (timeout = 1000; timeout > 0; timeout--) {
		if ((FUNC2(sc, I2C_BUS_CLEAR_CONFIG) &
		    I2C_BUS_CLEAR_CONFIG_BC_ENABLE) == 0)
			break;
		FUNC0(10);
	}
	if (timeout <= 0)
		FUNC4(sc->dev, "bus clear timeouted\n");

	status = FUNC2(sc, I2C_BUS_CLEAR_STATUS);
	if ((status & I2C_BUS_CLEAR_STATUS_BC_STATUS) == 0)
		FUNC4(sc->dev, "bus clear failed\n");
}