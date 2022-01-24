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
struct i2c_softc {int /*<<< orphan*/  slave; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_softc*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_softc*,int,char*,int /*<<< orphan*/ ,int) ; 
 int I2CCR_MEN ; 
 int I2CCR_MSTA ; 
 int I2CCR_TXAK ; 
 int /*<<< orphan*/  I2C_CONTROL_REG ; 
 int /*<<< orphan*/  I2C_DATA_REG ; 
 int /*<<< orphan*/  I2C_STATUS_REG ; 
 int IIC_NOERR ; 
 struct i2c_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_softc*,int) ; 
 int FUNC4 (struct i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_softc*,int) ; 
 int FUNC7 (struct i2c_softc*,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev, char *buf, int len, int *read, int last, int delay)
{
	struct i2c_softc *sc;
	int error, reg;

	sc = FUNC2(dev);
	*read = 0;

	FUNC1(sc, 1, "read   0x%02x len %d: ", sc->slave, len);
	if (len) {
		if (len == 1)
			FUNC5(sc, I2C_CONTROL_REG, I2CCR_MEN |
			    I2CCR_MSTA | I2CCR_TXAK);
		else
			FUNC5(sc, I2C_CONTROL_REG, I2CCR_MEN |
			    I2CCR_MSTA);
                /* Dummy read to prime the receiver. */
		FUNC5(sc, I2C_STATUS_REG, 0x0);
		FUNC4(sc, I2C_DATA_REG);
	}

	error = 0;
	*read = 0;
	while (*read < len) {
		if ((error = FUNC7(sc, false)) != IIC_NOERR)
			break;
		FUNC5(sc, I2C_STATUS_REG, 0x0);
		if (last) {
			if (*read == len - 2) {
				/* NO ACK on last byte */
				FUNC5(sc, I2C_CONTROL_REG, I2CCR_MEN |
				    I2CCR_MSTA | I2CCR_TXAK);
			} else if (*read == len - 1) {
				/* Transfer done, signal stop. */
				FUNC5(sc, I2C_CONTROL_REG, I2CCR_MEN |
				    I2CCR_TXAK);
				FUNC6(sc, false);
			}
		}
		reg = FUNC4(sc, I2C_DATA_REG);
		FUNC0(sc, 1, "0x%02x ", reg);
		*buf++ = reg;
		(*read)++;
	}
	FUNC0(sc, 1, "\n");

	return (FUNC3(sc, error));
}