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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct ti_i2c_softc {int sc_bus_inuse; int sc_error; int sc_con_reg; struct iic_msg* sc_buffer; int /*<<< orphan*/  sc_timeout; int /*<<< orphan*/  sc_mtx; scalar_t__ sc_buffer_pos; } ;
struct iic_msg {int len; int flags; int slave; int /*<<< orphan*/ * buf; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int I2C_BUF_RXFIFO_CLR ; 
 int I2C_BUF_TXFIFO_CLR ; 
 int I2C_CON_MST ; 
 int I2C_CON_STP ; 
 int I2C_CON_STT ; 
 int I2C_CON_TRX ; 
 int /*<<< orphan*/  I2C_REG_BUF ; 
 int /*<<< orphan*/  I2C_REG_CNT ; 
 int /*<<< orphan*/  I2C_REG_CON ; 
 int /*<<< orphan*/  I2C_REG_SA ; 
 int /*<<< orphan*/  I2C_REG_STATUS_RAW ; 
 int I2C_STAT_BB ; 
 int IIC_M_NOSTOP ; 
 int IIC_M_RD ; 
 int /*<<< orphan*/  FUNC1 (struct ti_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_i2c_softc*) ; 
 struct ti_i2c_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ti_i2c_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ti_i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_i2c_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
	int err, i, repstart, timeout;
	struct ti_i2c_softc *sc;
	uint16_t reg;

 	sc = FUNC3(dev);
	FUNC1(sc);

	/* If the controller is busy wait until it is available. */
	while (sc->sc_bus_inuse == 1)
		FUNC4(sc, &sc->sc_mtx, 0, "i2cbuswait", 0);

	/* Now we have control over the I2C controller. */
	sc->sc_bus_inuse = 1;

	err = 0;
	repstart = 0;
	for (i = 0; i < nmsgs; i++) {

		sc->sc_buffer = &msgs[i];
		sc->sc_buffer_pos = 0;
		sc->sc_error = 0;

		/* Zero byte transfers aren't allowed. */
		if (sc->sc_buffer == NULL || sc->sc_buffer->buf == NULL ||
		    sc->sc_buffer->len == 0) {
			err = EINVAL;
			break;
		}

		/* Check if the i2c bus is free. */
		if (repstart == 0) {
			/*
			 * On repeated start we send the START condition while
			 * the bus _is_ busy.
			 */
			timeout = 0;
			while (FUNC5(sc, I2C_REG_STATUS_RAW) & I2C_STAT_BB) {
				if (timeout++ > 100) {
					err = EBUSY;
					goto out;
				}
				FUNC0(1000);
			}
			timeout = 0;
		} else
			repstart = 0;

		if (sc->sc_buffer->flags & IIC_M_NOSTOP)
			repstart = 1;

		/* Set the slave address. */
		FUNC6(sc, I2C_REG_SA, msgs[i].slave >> 1);

		/* Write the data length. */
		FUNC6(sc, I2C_REG_CNT, sc->sc_buffer->len);

		/* Clear the RX and the TX FIFO. */
		reg = FUNC5(sc, I2C_REG_BUF);
		reg |= I2C_BUF_RXFIFO_CLR | I2C_BUF_TXFIFO_CLR;
		FUNC6(sc, I2C_REG_BUF, reg);

		reg = sc->sc_con_reg | I2C_CON_STT;
		if (repstart == 0)
			reg |= I2C_CON_STP;
		if ((sc->sc_buffer->flags & IIC_M_RD) == 0)
			reg |= I2C_CON_TRX;
		FUNC6(sc, I2C_REG_CON, reg);

		/* Wait for an event. */
		err = FUNC4(sc, &sc->sc_mtx, 0, "i2ciowait", sc->sc_timeout);
		if (err == 0)
			err = sc->sc_error;

		if (err)
			break;
	}

out:
	if (timeout == 0) {
		while (FUNC5(sc, I2C_REG_STATUS_RAW) & I2C_STAT_BB) {
			if (timeout++ > 100)
				break;
			FUNC0(1000);
		}
	}
	/* Put the controller in master mode again. */
	if ((FUNC5(sc, I2C_REG_CON) & I2C_CON_MST) == 0)
		FUNC6(sc, I2C_REG_CON, sc->sc_con_reg);

	sc->sc_buffer = NULL;
	sc->sc_bus_inuse = 0;

	/* Wake up the processes that are waiting for the bus. */
	FUNC7(sc);

	FUNC2(sc);

	return (err);
}