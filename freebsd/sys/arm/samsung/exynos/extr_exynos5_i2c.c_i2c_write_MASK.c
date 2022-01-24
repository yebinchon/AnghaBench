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
typedef  int /*<<< orphan*/  uint8_t ;
struct i2c_softc {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  I2CDS ; 
 int IIC_ENOACK ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_softc*) ; 
 struct i2c_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct i2c_softc*) ; 

__attribute__((used)) static int
FUNC9(device_t dev, const char *buf, int len, int *sent, int timeout)
{
	struct i2c_softc *sc;
	int error;

	sc = FUNC4(dev);

	FUNC1("i2c write\n");

	*sent = 0;

	FUNC6(&sc->mutex);

	FUNC1("writing ");
	while (*sent < len) {
		uint8_t d = *buf++;
		FUNC1("0x%02x ", d);

		FUNC2(sc, I2CDS, d);
		FUNC0(50);

		FUNC3(sc);

		error = FUNC8(sc);
		if (error) {
			FUNC1("cant i2c write: iif error\n");
			FUNC7(&sc->mutex);
			return (error);
		}

		if (!FUNC5(sc)) {
			FUNC1("cant i2c write: no ack\n");
			FUNC7(&sc->mutex);
			return (IIC_ENOACK);
		}

		(*sent)++;
	}
	FUNC1("\n");

	FUNC7(&sc->mutex);
	return (IIC_NOERR);
}