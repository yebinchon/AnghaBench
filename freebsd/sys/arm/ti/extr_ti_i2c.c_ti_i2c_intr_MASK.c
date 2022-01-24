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
typedef  int /*<<< orphan*/  uint16_t ;
struct ti_i2c_softc {int /*<<< orphan*/  sc_error; int /*<<< orphan*/ * sc_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  I2C_REG_IRQENABLE_SET ; 
 int /*<<< orphan*/  I2C_REG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct ti_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_i2c_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_i2c_softc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_i2c_softc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ti_i2c_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_i2c_softc*) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	int done;
	struct ti_i2c_softc *sc;
	uint16_t events, status;

 	sc = (struct ti_i2c_softc *)arg;

	FUNC0(sc);

	status = FUNC3(sc, I2C_REG_STATUS);
	if (status == 0) {
		FUNC1(sc);
		return;
	}

	/* Save enabled interrupts. */
	events = FUNC3(sc, I2C_REG_IRQENABLE_SET);

	/* We only care about enabled interrupts. */
	status &= events;

	done = 0;

	if (sc->sc_buffer != NULL)
		done = FUNC4(sc, status);
	else {
		FUNC2(sc, "Transfer interrupt without buffer\n");
		sc->sc_error = EINVAL;
		done = 1;
	}

	if (done)
		/* Wakeup the process that started the transaction. */
		FUNC5(sc);

	FUNC1(sc);
}