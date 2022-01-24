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
struct rk_i2c_softc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  RK_I2C_CON ; 
 int /*<<< orphan*/  RK_I2C_CON_STOP ; 
 int /*<<< orphan*/  RK_I2C_IEN ; 
 int /*<<< orphan*/  RK_I2C_IEN_STOPIEN ; 
 int /*<<< orphan*/  FUNC0 (struct rk_i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rk_i2c_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_STOP ; 

__attribute__((used)) static void
FUNC2(struct rk_i2c_softc *sc)
{
	uint32_t reg;

	FUNC1(sc, RK_I2C_IEN, RK_I2C_IEN_STOPIEN);

	sc->state = STATE_STOP;

	reg = FUNC0(sc, RK_I2C_CON);
	reg |= RK_I2C_CON_STOP;
	FUNC1(sc, RK_I2C_CON, reg);
}