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
struct i2c_softc {int slave; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_softc*,int,char*,int) ; 
 int I2CCR_MEN ; 
 int I2CCR_MSTA ; 
 int I2CCR_MTX ; 
 int I2CSR_MBB ; 
 int /*<<< orphan*/  I2C_CONTROL_REG ; 
 int /*<<< orphan*/  I2C_DATA_REG ; 
 int /*<<< orphan*/  I2C_STATUS_REG ; 
 int IIC_EBUSERR ; 
 int IIC_NOERR ; 
 struct i2c_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_softc*,int) ; 
 int FUNC4 (struct i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct i2c_softc*,int) ; 
 int FUNC7 (struct i2c_softc*,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev, u_char slave, int timeout)
{
	struct i2c_softc *sc;
	int error;

	sc = FUNC2(dev);

	FUNC5(sc, I2C_CONTROL_REG, I2CCR_MEN);
	FUNC0(10); /* Delay for controller to sample bus state. */
	if (FUNC4(sc, I2C_STATUS_REG) & I2CSR_MBB) {
		return (FUNC3(sc, IIC_EBUSERR));
	}
	FUNC5(sc, I2C_CONTROL_REG, I2CCR_MEN | I2CCR_MSTA | I2CCR_MTX);
	if ((error = FUNC6(sc, true)) != IIC_NOERR)
		return (FUNC3(sc, error));
	FUNC5(sc, I2C_STATUS_REG, 0);
	FUNC5(sc, I2C_DATA_REG, slave);
	sc->slave = slave;
	FUNC1(sc, 2, "start  0x%02x\n", sc->slave);
	error = FUNC7(sc, true);
	return (FUNC3(sc, error));
}