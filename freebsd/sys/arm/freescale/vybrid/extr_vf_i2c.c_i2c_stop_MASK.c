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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I2C_IBCR ; 
 int IBCR_IBIE ; 
 int IBCR_MDIS ; 
 int IBCR_NOACK ; 
 scalar_t__ IIC_ETIMEOUT ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 struct i2c_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_softc*,char*) ; 
 scalar_t__ FUNC6 (struct i2c_softc*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct i2c_softc *sc;

	sc = FUNC2(dev);

	FUNC5(sc, "i2c stop\n");

	FUNC3(&sc->mutex);

	FUNC1(sc, I2C_IBCR, IBCR_NOACK | IBCR_IBIE);

	FUNC0(100);

	/* Reset controller if bus still busy after STOP */
	if (FUNC6(sc) == IIC_ETIMEOUT) {
		FUNC1(sc, I2C_IBCR, IBCR_MDIS);
		FUNC0(1000);
		FUNC1(sc, I2C_IBCR, IBCR_NOACK);
	}
	FUNC4(&sc->mutex);

	return (IIC_NOERR);
}