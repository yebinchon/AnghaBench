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
struct ti_spi_softc {scalar_t__ sc_mem_res; scalar_t__ sc_irq_res; scalar_t__ sc_intrhand; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MCSPI_IRQENABLE ; 
 int /*<<< orphan*/  MCSPI_IRQSTATUS ; 
 int /*<<< orphan*/  MCSPI_SYSCONFIG ; 
 int MCSPI_SYSCONFIG_SOFTRESET ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct ti_spi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct ti_spi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct ti_spi_softc *sc;

	sc = FUNC4(dev);

	/* Clear pending interrupts and disable interrupts. */
	FUNC0(sc, MCSPI_IRQENABLE, 0);
	FUNC0(sc, MCSPI_IRQSTATUS, 0xffff);

	/* Reset controller. */
	FUNC0(sc, MCSPI_SYSCONFIG, MCSPI_SYSCONFIG_SOFTRESET);

	FUNC1(dev);

	FUNC5(&sc->sc_mtx);
	if (sc->sc_intrhand)
		FUNC3(dev, sc->sc_irq_res, sc->sc_intrhand);
	if (sc->sc_irq_res)
		FUNC2(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
	if (sc->sc_mem_res)
		FUNC2(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);

	return (0);
}