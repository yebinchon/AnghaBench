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
struct soctherm_softc {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * reset; int /*<<< orphan*/ * soctherm_clk; int /*<<< orphan*/ * tsensor_clk; int /*<<< orphan*/ * irq_ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct soctherm_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  soctherm_sysctl_ctx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct soctherm_softc *sc;
	sc = FUNC3(dev);

	if (sc->irq_ih != NULL)
		FUNC1(dev, sc->irq_res, sc->irq_ih);
	FUNC5(&soctherm_sysctl_ctx);
	if (sc->tsensor_clk != NULL)
		FUNC2(sc->tsensor_clk);
	if (sc->soctherm_clk != NULL)
		FUNC2(sc->soctherm_clk);
	if (sc->reset != NULL)
		FUNC4(sc->reset);
	if (sc->irq_res != NULL)
		FUNC0(dev, SYS_RES_IRQ, 0, sc->irq_res);
	if (sc->mem_res != NULL)
		FUNC0(dev, SYS_RES_MEMORY, 0, sc->mem_res);

	return (ENXIO);
}