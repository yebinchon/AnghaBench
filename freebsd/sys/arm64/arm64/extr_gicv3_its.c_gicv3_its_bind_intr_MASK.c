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
struct intr_irqsrc {int /*<<< orphan*/  isrc_cpu; } ;
struct gicv3_its_softc {int /*<<< orphan*/  gic_irq_cpu; int /*<<< orphan*/  sc_cpus; } ;
struct gicv3_its_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct gicv3_its_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct gicv3_its_irqsrc*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct intr_irqsrc *isrc)
{
	struct gicv3_its_irqsrc *girq;
	struct gicv3_its_softc *sc;

	sc = FUNC2(dev);
	girq = (struct gicv3_its_irqsrc *)isrc;
	if (FUNC0(&isrc->isrc_cpu)) {
		sc->gic_irq_cpu = FUNC3(sc->gic_irq_cpu,
		    &sc->sc_cpus);
		FUNC1(sc->gic_irq_cpu, &isrc->isrc_cpu);
	}

	FUNC4(dev, girq);

	return (0);
}