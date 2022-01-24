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
typedef  void* uint8_t ;
struct i2c_softc {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ACKGEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  I2CCON ; 
 int /*<<< orphan*/  I2CDS ; 
 int I2CMODE_MR ; 
 int I2CMODE_S ; 
 int /*<<< orphan*/  I2CSTAT ; 
 int I2C_START_STOP ; 
 int IIC_NOERR ; 
 void* FUNC1 (struct i2c_softc*,int /*<<< orphan*/ ) ; 
 int RXTX_EN ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_softc*) ; 
 struct i2c_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct i2c_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, char *buf, int len,
    int *read, int last, int delay)
{
	struct i2c_softc *sc;
	int error;
	int reg;
	uint8_t d;

	sc = FUNC4(dev);

	FUNC0("i2c read\n");

	reg = (RXTX_EN);
	reg |= (I2CMODE_MR << I2CMODE_S);
	reg |= I2C_START_STOP;
	FUNC2(sc, I2CSTAT, reg);

	*read = 0;
	FUNC5(&sc->mutex);

	/* dummy read */
	FUNC3(sc);
	error = FUNC7(sc);
	if (error) {
		FUNC0("cant i2c read: iif error\n");
		FUNC6(&sc->mutex);
		return (error);
	}
	FUNC1(sc, I2CDS);

	FUNC0("Read ");
	while (*read < len) {

		/* Do not ack last read */
		if (*read == (len - 1)) {
			reg = FUNC1(sc, I2CCON);
			reg &= ~(ACKGEN);
			FUNC2(sc, I2CCON, reg);
		}

		FUNC3(sc);

		error = FUNC7(sc);
		if (error) {
			FUNC0("cant i2c read: iif error\n");
			FUNC6(&sc->mutex);
			return (error);
		}

		d = FUNC1(sc, I2CDS);
		FUNC0("0x%02x ", d);
		*buf++ = d;
		(*read)++;
	}
	FUNC0("\n");

	FUNC6(&sc->mutex);
	return (IIC_NOERR);
}