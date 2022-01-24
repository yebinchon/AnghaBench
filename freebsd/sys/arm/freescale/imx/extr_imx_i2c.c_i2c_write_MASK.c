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
 int /*<<< orphan*/  I2C_DATA_REG ; 
 int /*<<< orphan*/  I2C_STATUS_REG ; 
 int IIC_NOERR ; 
 struct i2c_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct i2c_softc*,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, const char *buf, int len, int *sent, int timeout)
{
	struct i2c_softc *sc;
	int error;

	sc = FUNC2(dev);

	error = 0;
	*sent = 0;
	FUNC1(sc, 1, "write  0x%02x len %d: ", sc->slave, len);
	while (*sent < len) {
		FUNC0(sc, 1, "0x%02x ", *buf);
		FUNC4(sc, I2C_STATUS_REG, 0x0);
		FUNC4(sc, I2C_DATA_REG, *buf++);
		if ((error = FUNC5(sc, true)) != IIC_NOERR)
			break;
		(*sent)++;
	}
	FUNC0(sc, 1, "\n");
	return (FUNC3(sc, error));
}