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
struct i2c_softc {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int I2CMODE_M ; 
 int I2CMODE_S ; 
 int /*<<< orphan*/  I2CSTAT ; 
 int IIC_NOERR ; 
 int FUNC1 (struct i2c_softc*,int /*<<< orphan*/ ) ; 
 int RXTX_EN ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_softc*) ; 
 struct i2c_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct i2c_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct i2c_softc *sc;
	int reg;
	int error;

	sc = FUNC4(dev);

	FUNC0("i2c stop\n");

	FUNC5(&sc->mutex);

	reg = FUNC1(sc, I2CSTAT);
	int mode = (reg >> I2CMODE_S) & I2CMODE_M;

	reg = (RXTX_EN);
	reg |= (mode << I2CMODE_S);
	FUNC2(sc, I2CSTAT, reg);

	FUNC3(sc);

	error = FUNC7(sc);
	if (error) {
		FUNC0("cant i2c stop: nibb error\n");
		return (error);
	}

	FUNC6(&sc->mutex);
	return (IIC_NOERR);
}