#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct trapframe {int dummy; } ;
struct tegra_gpio_softc {int /*<<< orphan*/  dev; struct tegra_gpio_irqsrc* isrcs; int /*<<< orphan*/  mem_res; } ;
struct tegra_gpio_irqsrc {int /*<<< orphan*/  isrc; } ;
struct tegra_gpio_irq_cookie {int bank_num; struct tegra_gpio_softc* sc; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 scalar_t__ GPIO_INT_ENB ; 
 scalar_t__ GPIO_INT_STA ; 
 int GPIO_PINS_IN_REG ; 
 scalar_t__ FUNC0 (int) ; 
 int GPIO_REGS_IN_BANK ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_gpio_softc*,struct tegra_gpio_irqsrc*) ; 
 scalar_t__ FUNC5 (struct tegra_gpio_irqsrc*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_gpio_softc*,struct tegra_gpio_irqsrc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(void *arg)
{
	u_int irq, i, j, val, basepin;
	struct tegra_gpio_softc *sc;
	struct trapframe *tf;
	struct tegra_gpio_irqsrc *tgi;
	struct tegra_gpio_irq_cookie *cookie;

	cookie = (struct tegra_gpio_irq_cookie *)arg;
	sc = cookie->sc;
	tf = curthread->td_intr_frame;

	for (i = 0; i < GPIO_REGS_IN_BANK; i++) {
		basepin  = cookie->bank_num * GPIO_REGS_IN_BANK *
		    GPIO_PINS_IN_REG + i * GPIO_PINS_IN_REG;

		val = FUNC1(sc->mem_res, GPIO_INT_STA +
		    FUNC0(basepin));
		val &= FUNC1(sc->mem_res, GPIO_INT_ENB +
		    FUNC0(basepin));
		/* Interrupt handling */
		for (j = 0; j < GPIO_PINS_IN_REG; j++) {
			if ((val & (1 << j)) == 0)
				continue;
			irq = basepin + j;
			tgi = &sc->isrcs[irq];
			if (!FUNC5(tgi))
				FUNC4(sc, tgi);
			if (FUNC3(&tgi->isrc, tf) != 0) {
				FUNC6(sc, tgi, 0);
				if (FUNC5(tgi))
					FUNC4(sc, tgi);
				FUNC2(sc->dev,
				    "Stray irq %u disabled\n", irq);
			}

		}
	}

	return (FILTER_HANDLED);
}