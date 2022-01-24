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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct rk_i2c_softc {int /*<<< orphan*/  iicbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RK_I2C_CLKDIV ; 
 int /*<<< orphan*/  RK_I2C_CON ; 
 int /*<<< orphan*/  FUNC1 (struct rk_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rk_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rk_i2c_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rk_i2c_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rk_i2c_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
	struct rk_i2c_softc *sc;
	uint32_t clkdiv;
	u_int busfreq;

	sc = FUNC4(dev);

	busfreq = FUNC0(sc->iicbus, speed);

	clkdiv = FUNC5(sc, busfreq);

	FUNC1(sc);

	/* Set the clock divider */
	FUNC3(sc, RK_I2C_CLKDIV, clkdiv);

	/* Disable the module */
	FUNC3(sc, RK_I2C_CON, 0);

	FUNC2(sc);

	return (0);
}