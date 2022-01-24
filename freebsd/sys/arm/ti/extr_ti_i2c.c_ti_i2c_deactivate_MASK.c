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
struct ti_i2c_softc {int /*<<< orphan*/  clk_id; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/ * sc_irq_h; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_REG_CON ; 
 int /*<<< orphan*/  I2C_REG_IRQENABLE_CLR ; 
 int /*<<< orphan*/  I2C_REG_STATUS ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ti_i2c_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_i2c_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
	struct ti_i2c_softc *sc = FUNC2(dev);

	/* Disable the controller - cancel all transactions. */
	FUNC3(sc, I2C_REG_IRQENABLE_CLR, 0xffff);
	FUNC3(sc, I2C_REG_STATUS, 0xffff);
	FUNC3(sc, I2C_REG_CON, 0);

	/* Release the interrupt handler. */
	if (sc->sc_irq_h != NULL) {
		FUNC1(dev, sc->sc_irq_res, sc->sc_irq_h);
		sc->sc_irq_h = NULL;
	}

	/* Unmap the I2C controller registers. */
	if (sc->sc_mem_res != NULL) {
		FUNC0(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		sc->sc_mem_res = NULL;
	}

	/* Release the IRQ resource. */
	if (sc->sc_irq_res != NULL) {
		FUNC0(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
		sc->sc_irq_res = NULL;
	}

	/* Finally disable the functional and interface clocks. */
	FUNC4(sc->clk_id);
}