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
struct tegra_i2c_softc {int bus_inuse; int bus_err; scalar_t__ done; scalar_t__ msg_idx; struct iic_msg* msg; int /*<<< orphan*/  mtx; } ;
struct iic_msg {scalar_t__ len; int flags; int /*<<< orphan*/ * buf; } ;
typedef  enum tegra_i2c_xfer_type { ____Placeholder_tegra_i2c_xfer_type } tegra_i2c_xfer_type ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  I2C_INTERRUPT_MASK_REGISTER ; 
 int /*<<< orphan*/  I2C_INTERRUPT_STATUS_REGISTER ; 
 int /*<<< orphan*/  I2C_REQUEST_TIMEOUT ; 
 int IIC_M_NOSTART ; 
 int IIC_M_NOSTOP ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_i2c_softc*) ; 
 int /*<<< orphan*/  PZERO ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int XFER_CONTINUE ; 
 int XFER_REPEAT_START ; 
 int XFER_STOP ; 
 scalar_t__ cold ; 
 struct tegra_i2c_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_i2c_softc*) ; 
 int FUNC8 (struct tegra_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_i2c_softc*,struct iic_msg*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_i2c_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
	int rv, i;
	struct tegra_i2c_softc *sc;
	enum tegra_i2c_xfer_type xtype;

	sc = FUNC4(dev);
	FUNC0(sc);

	/* Get the bus. */
	while (sc->bus_inuse == 1)
		FUNC1(sc,  0);
	sc->bus_inuse = 1;

	rv = 0;
	for (i = 0; i < nmsgs; i++) {
		sc->msg = &msgs[i];
		sc->msg_idx = 0;
		sc->bus_err = 0;
		sc->done = 0;
		/* Check for valid parameters. */
		if (sc->msg == NULL || sc->msg->buf == NULL ||
		    sc->msg->len == 0) {
			rv = EINVAL;
			break;
		}

		/* Get flags for next transfer. */
		if (i == (nmsgs - 1)) {
			if (msgs[i].flags & IIC_M_NOSTOP)
				xtype = XFER_CONTINUE;
			else
				xtype = XFER_STOP;
		} else {
			if (msgs[i + 1].flags & IIC_M_NOSTART)
				xtype = XFER_CONTINUE;
			else
				xtype = XFER_REPEAT_START;
		}
		FUNC9(sc, sc->msg, xtype);
		if (cold)
			rv = FUNC8(sc);
		else
			rv = FUNC5(&sc->done, &sc->mtx, PZERO, "iic",
			    I2C_REQUEST_TIMEOUT);

		FUNC3(sc, I2C_INTERRUPT_MASK_REGISTER, 0);
		FUNC3(sc, I2C_INTERRUPT_STATUS_REGISTER, 0xFFFFFFFF);
		if (rv == 0)
			rv = sc->bus_err;
		if (rv != 0)
			break;
	}

	if (rv != 0) {
		FUNC7(sc);
		FUNC6(sc);
	}

	sc->msg = NULL;
	sc->msg_idx = 0;
	sc->bus_err = 0;
	sc->done = 0;

	/* Wake up the processes that are waiting for the bus. */
	sc->bus_inuse = 0;
	FUNC10(sc);
	FUNC2(sc);

	return (rv);
}