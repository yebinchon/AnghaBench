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
typedef  scalar_t__ u_int ;
struct trapframe {int dummy; } ;
struct tegra_pcib_softc {int /*<<< orphan*/  dev; struct tegra_pcib_irqsrc* isrcs; } ;
struct tegra_pcib_irqsrc {int /*<<< orphan*/  isrc; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;

/* Variables and functions */
 scalar_t__ AFI_MSI_INTR_IN_REG ; 
 scalar_t__ AFI_MSI_REGS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct tegra_pcib_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_pcib_softc*,int /*<<< orphan*/ ,int) ; 
 int FILTER_HANDLED ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_pcib_softc*,struct tegra_pcib_irqsrc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(void *arg)
{
	u_int irq, i, bit, reg;
	struct tegra_pcib_softc *sc;
	struct trapframe *tf;
	struct tegra_pcib_irqsrc *tgi;

	sc = (struct tegra_pcib_softc *)arg;
	tf = curthread->td_intr_frame;

	for (i = 0; i < AFI_MSI_REGS; i++) {
		reg = FUNC1(sc, FUNC0(i));
		/* Handle one vector. */
		while (reg != 0) {
			bit = FUNC4(reg) - 1;
			/* Send EOI */
			FUNC2(sc, FUNC0(i), 1 << bit);
			irq = i * AFI_MSI_INTR_IN_REG + bit;
			tgi = &sc->isrcs[irq];
			if (FUNC5(&tgi->isrc, tf) != 0) {
				/* Disable stray. */
				FUNC6(sc, tgi, 0);
				FUNC3(sc->dev,
				    "Stray irq %u disabled\n", irq);
			}
			reg = FUNC1(sc, FUNC0(i));
		}
	}
	return (FILTER_HANDLED);
}