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
 int /*<<< orphan*/  I2C_IBCR ; 
 int /*<<< orphan*/  I2C_IBFD ; 
 int IBCR_MDIS ; 
#define  IIC_FAST 131 
#define  IIC_FASTEST 130 
 int IIC_NOERR ; 
#define  IIC_SLOW 129 
#define  IIC_UNKNOWN 128 
 int /*<<< orphan*/  FUNC1 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 struct i2c_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_softc*,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev, u_char speed, u_char addr, u_char *oldadr)
{
	struct i2c_softc *sc;

	sc = FUNC2(dev);

	FUNC5(sc, "i2c reset\n");

	switch (speed) {
	case IIC_FAST:
	case IIC_SLOW:
	case IIC_UNKNOWN:
	case IIC_FASTEST:
	default:
		break;
	}

	FUNC3(&sc->mutex);
	FUNC1(sc, I2C_IBCR, IBCR_MDIS);

	FUNC0(1000);

	FUNC1(sc, I2C_IBFD, 20);
	FUNC1(sc, I2C_IBCR, 0x0); /* Enable i2c */

	FUNC0(1000);

	FUNC4(&sc->mutex);

	return (IIC_NOERR);
}