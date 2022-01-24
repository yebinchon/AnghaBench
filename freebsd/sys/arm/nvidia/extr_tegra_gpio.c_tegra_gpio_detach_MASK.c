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
struct tegra_gpio_softc {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ ** irq_res; int /*<<< orphan*/ * isrcs; int /*<<< orphan*/ ** irq_ih; int /*<<< orphan*/  mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra_gpio_softc*) ; 
 int GPIO_NUM_BANKS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tegra_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_gpio_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct tegra_gpio_softc *sc;
	int i;

	sc = FUNC4(dev);

	FUNC1(FUNC6(&sc->mtx), ("gpio mutex not initialized"));

	for (i = 0; i < GPIO_NUM_BANKS; i++) {
		if (sc->irq_ih[i] != NULL)
			FUNC3(dev, sc->irq_res[i], sc->irq_ih[i]);
	}

	if (sc->isrcs != NULL)
		FUNC7(sc);

	FUNC5(dev);

	for (i = 0; i < GPIO_NUM_BANKS; i++) {
		if (sc->irq_res[i] != NULL)
			FUNC2(dev, SYS_RES_IRQ, 0,
			    sc->irq_res[i]);
	}
	if (sc->mem_res != NULL)
		FUNC2(dev, SYS_RES_MEMORY, 0, sc->mem_res);
	FUNC0(sc);

	return(0);
}