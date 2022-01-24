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
struct tegra_gpio_softc {int /*<<< orphan*/  mem_res; } ;
struct tegra_gpio_irqsrc {int /*<<< orphan*/  irq; } ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static inline void
FUNC3(struct tegra_gpio_softc *sc, bus_addr_t reg,
    struct tegra_gpio_irqsrc *tgi, uint32_t val)
{
	uint32_t tmp;
	int bit;

	bit = FUNC0(tgi->irq);
	tmp = 0x100 << bit;		/* mask */
	tmp |= (val & 1) << bit;	/* value */
	FUNC2(sc->mem_res, reg + FUNC1(tgi->irq), tmp);
}