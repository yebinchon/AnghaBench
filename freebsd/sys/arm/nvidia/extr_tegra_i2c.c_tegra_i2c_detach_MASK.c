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
struct tegra_i2c_softc {scalar_t__ iicbus; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * irq_h; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra_i2c_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct tegra_i2c_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_i2c_softc*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct tegra_i2c_softc *sc;
	int rv;

	sc = FUNC5(dev);
	FUNC6(sc);
	if (sc->irq_h != NULL)
		FUNC3(dev, sc->irq_res, sc->irq_h);
	if (sc->irq_res != NULL)
		FUNC2(dev, SYS_RES_IRQ, 0, sc->irq_res);
	if (sc->mem_res != NULL)
		FUNC2(dev, SYS_RES_MEMORY, 0, sc->mem_res);

	FUNC0(sc);
	if (sc->iicbus)
	    rv = FUNC4(dev, sc->iicbus);
	return (FUNC1(dev));
}