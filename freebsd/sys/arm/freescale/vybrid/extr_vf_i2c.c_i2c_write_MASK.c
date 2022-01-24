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
 int /*<<< orphan*/  I2C_IBDR ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_softc*,char*) ; 
 int FUNC5 (struct i2c_softc*) ; 

__attribute__((used)) static int
FUNC6(device_t dev, const char *buf, int len, int *sent, int timeout)
{
	struct i2c_softc *sc;
	int error;

	sc = FUNC1(dev);

	FUNC4(sc, "i2c write\n");

	*sent = 0;

	FUNC2(&sc->mutex);
	while (*sent < len) {

		FUNC0(sc, I2C_IBDR, *buf++);

		error = FUNC5(sc);
		if (error) {
			FUNC3(&sc->mutex);
			return (error);
		}

		(*sent)++;
	}
	FUNC3(&sc->mutex);

	return (IIC_NOERR);
}