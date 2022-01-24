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
typedef  int u_char ;
struct i2c_softc {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I2C_IBAD ; 
 int /*<<< orphan*/  I2C_IBCR ; 
 int /*<<< orphan*/  I2C_IBDR ; 
 int /*<<< orphan*/  I2C_IBSR ; 
 int IBCR_IBIE ; 
 int IBCR_MSSL ; 
 int IBCR_NOACK ; 
 int IBCR_TXRX ; 
 int IBSR_IBB ; 
 int IIC_EBUSERR ; 
 int IIC_NOERR ; 
 int FUNC1 (struct i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 struct i2c_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_softc*,char*) ; 
 int FUNC7 (struct i2c_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, u_char slave, int timeout)
{
	struct i2c_softc *sc;
	int error;
	int reg;

	sc = FUNC3(dev);

	FUNC6(sc, "i2c start\n");

	FUNC4(&sc->mutex);

	FUNC2(sc, I2C_IBAD, slave);

	if (FUNC1(sc, I2C_IBSR) & IBSR_IBB) {
		FUNC5(&sc->mutex);
		FUNC6(sc, "cant i2c start: IIC_EBUSBSY\n");
		return (IIC_EBUSERR);
	}

	/* Set start condition */
	reg = (IBCR_MSSL | IBCR_NOACK | IBCR_IBIE);
	FUNC2(sc, I2C_IBCR, reg);

	FUNC0(100);

	reg |= (IBCR_TXRX);
	FUNC2(sc, I2C_IBCR, reg);

	/* Write target address - LSB is R/W bit */
	FUNC2(sc, I2C_IBDR, slave);

	error = FUNC7(sc);

	FUNC5(&sc->mutex);
	if (error) {
		FUNC6(sc, "cant i2c start: iif error\n");
		return (error);
	}

	return (IIC_NOERR);
}