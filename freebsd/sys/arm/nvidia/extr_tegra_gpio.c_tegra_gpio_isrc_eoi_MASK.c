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

/* Variables and functions */
 int /*<<< orphan*/  GPIO_INT_CLR ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_gpio_softc*,int /*<<< orphan*/ ,struct tegra_gpio_irqsrc*,int) ; 

__attribute__((used)) static inline void
FUNC1(struct tegra_gpio_softc *sc,
     struct tegra_gpio_irqsrc *tgi)
{

	FUNC0(sc, GPIO_INT_CLR, tgi, 1);
}