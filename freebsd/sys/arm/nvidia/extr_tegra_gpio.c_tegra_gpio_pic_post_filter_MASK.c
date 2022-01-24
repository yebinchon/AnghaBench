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
struct tegra_gpio_softc {int dummy; } ;
struct tegra_gpio_irqsrc {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct tegra_gpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_gpio_softc*,struct tegra_gpio_irqsrc*) ; 
 scalar_t__ FUNC2 (struct tegra_gpio_irqsrc*) ; 

__attribute__((used)) static void
FUNC3(device_t dev, struct intr_irqsrc *isrc)
{
	struct tegra_gpio_softc *sc;
	struct tegra_gpio_irqsrc *tgi;

	sc = FUNC0(dev);
	tgi = (struct tegra_gpio_irqsrc *)isrc;
	if (FUNC2(tgi))
		FUNC1(sc, tgi);
}