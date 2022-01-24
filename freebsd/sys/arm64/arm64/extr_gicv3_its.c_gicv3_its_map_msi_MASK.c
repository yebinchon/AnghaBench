#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct intr_irqsrc {int dummy; } ;
struct gicv3_its_softc {int /*<<< orphan*/  sc_its_res; } ;
struct gicv3_its_irqsrc {TYPE_2__* gi_its_dev; scalar_t__ gi_irq; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {scalar_t__ lpi_base; } ;
struct TYPE_4__ {TYPE_1__ lpis; } ;

/* Variables and functions */
 scalar_t__ GITS_TRANSLATER ; 
 struct gicv3_its_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct gicv3_its_irqsrc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child, struct intr_irqsrc *isrc,
    uint64_t *addr, uint32_t *data)
{
	struct gicv3_its_softc *sc;
	struct gicv3_its_irqsrc *girq;

	sc = FUNC0(dev);
	girq = (struct gicv3_its_irqsrc *)isrc;

	/* Map the message to the given IRQ */
	FUNC1(dev, girq);

	*addr = FUNC3(FUNC2(sc->sc_its_res)) + GITS_TRANSLATER;
	*data = girq->gi_irq - girq->gi_its_dev->lpis.lpi_base;

	return (0);
}