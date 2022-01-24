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
struct sdhci_slot {int dummy; } ;
struct tegra_sdhci_softc {int /*<<< orphan*/  mem_res; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  intr_cookie; int /*<<< orphan*/  clk; int /*<<< orphan*/  gpio; struct sdhci_slot slot; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct tegra_sdhci_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct tegra_sdhci_softc *sc = FUNC4(dev);
	struct sdhci_slot *slot = &sc->slot;

	FUNC0(dev);
	FUNC7(sc->gpio);
	FUNC3(sc->clk);
	FUNC2(dev, sc->irq_res, sc->intr_cookie);
	FUNC1(dev, SYS_RES_IRQ, FUNC5(sc->irq_res),
			     sc->irq_res);

	FUNC6(slot);
	FUNC1(dev, SYS_RES_MEMORY,
			     FUNC5(sc->mem_res),
			     sc->mem_res);
	return (0);
}