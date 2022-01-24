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
 int /*<<< orphan*/  I2C_IBDR ; 
 int IBCR_IBIE ; 
 int IBCR_MSSL ; 
 int IBCR_NOACK ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_softc*,int /*<<< orphan*/ ,int) ; 
 struct i2c_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_softc*,char*) ; 
 int FUNC7 (struct i2c_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, char *buf, int len, int *read, int last, int delay)
{
	struct i2c_softc *sc;
	int error;

	sc = FUNC3(dev);

	FUNC6(sc, "i2c read\n");

	*read = 0;

	FUNC4(&sc->mutex);

	if (len) {
		if (len == 1)
			FUNC2(sc, I2C_IBCR, IBCR_IBIE | IBCR_MSSL |	\
			    IBCR_NOACK);
		else
			FUNC2(sc, I2C_IBCR, IBCR_IBIE | IBCR_MSSL);

		/* dummy read */
		FUNC1(sc, I2C_IBDR);
		FUNC0(1000);
	}

	while (*read < len) {
		error = FUNC7(sc);
		if (error) {
			FUNC5(&sc->mutex);
			return (error);
		}

		if ((*read == len - 2) && last) {
			/* NO ACK on last byte */
			FUNC2(sc, I2C_IBCR, IBCR_IBIE | IBCR_MSSL |	\
			    IBCR_NOACK);
		}

		if ((*read == len - 1) && last) {
			/* Transfer done, remove master bit */
			FUNC2(sc, I2C_IBCR, IBCR_IBIE | IBCR_NOACK);
		}

		*buf++ = FUNC1(sc, I2C_IBDR);
		(*read)++;
	}
	FUNC5(&sc->mutex);

	return (IIC_NOERR);
}