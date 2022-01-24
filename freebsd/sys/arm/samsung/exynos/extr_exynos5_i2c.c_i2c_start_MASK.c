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
 int ACKGEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  I2CCON ; 
 int /*<<< orphan*/  I2CDS ; 
 int I2CMODE_MT ; 
 int I2CMODE_S ; 
 int /*<<< orphan*/  I2CSTAT ; 
 int I2C_START_STOP ; 
 int IIC_EBUSERR ; 
 int IIC_ENOACK ; 
 int IIC_NOERR ; 
 int IRQ_EN ; 
 int FUNC2 (struct i2c_softc*,int /*<<< orphan*/ ) ; 
 int RXTX_EN ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 struct i2c_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct i2c_softc*) ; 
 int FUNC9 (struct i2c_softc*) ; 

__attribute__((used)) static int
FUNC10(device_t dev, u_char slave, int timeout)
{
	struct i2c_softc *sc;
	int error;
	int reg;

	sc = FUNC4(dev);

	FUNC1("i2c start\n");

	FUNC6(&sc->mutex);

#if 0
	DPRINTF("I2CCON == 0x%08x\n", READ1(sc, I2CCON));
	DPRINTF("I2CSTAT == 0x%08x\n", READ1(sc, I2CSTAT));
#endif

	if (slave & 1) {
		slave &= ~(1);
		slave <<= 1;
		slave |= 1;
	} else {
		slave <<= 1;
	}

	error = FUNC9(sc);
	if (error) {
		FUNC7(&sc->mutex);
		FUNC1("cant i2c start: IIC_EBUSERR\n");
		return (IIC_EBUSERR);
	}

	reg = FUNC2(sc, I2CCON);
	reg |= (IRQ_EN | ACKGEN);
	FUNC3(sc, I2CCON, reg);

	FUNC3(sc, I2CDS, slave);
	FUNC0(50);

	reg = (RXTX_EN);
	reg |= I2C_START_STOP;
	reg |= (I2CMODE_MT << I2CMODE_S);
	FUNC3(sc, I2CSTAT, reg);

	error = FUNC8(sc);
	if (error) {
		FUNC1("cant i2c start: iif error\n");

		FUNC7(&sc->mutex);
		return (error);
	}

	if (!FUNC5(sc)) {
		FUNC1("cant i2c start: no ack\n");

		FUNC7(&sc->mutex);
		return (IIC_ENOACK);
	}

	FUNC7(&sc->mutex);
	return (IIC_NOERR);
}