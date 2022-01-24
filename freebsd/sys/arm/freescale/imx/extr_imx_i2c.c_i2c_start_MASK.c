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
typedef  int /*<<< orphan*/  u_char ;
struct i2c_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_CONTROL_REG ; 
 struct i2c_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_softc*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, u_char slave, int timeout)
{
	struct i2c_softc *sc;
	int error;

	sc = FUNC0(dev);

	/*
	 * Invoke the low-level code to put the bus into master mode and address
	 * the given slave.  If that fails, idle the controller and attempt a
	 * bus recovery, and then try again one time.  Signaling a start and
	 * addressing the slave is the only operation that a low-level driver
	 * can safely retry without any help from the upper layers that know
	 * more about the slave device.
	 */
	if ((error = FUNC2(dev, slave, timeout)) != 0) {
		FUNC3(sc, I2C_CONTROL_REG, 0x0);
		if ((error = FUNC1(sc)) != 0)
			return (error);
		error = FUNC2(dev, slave, timeout);
	}
	return (error);
}