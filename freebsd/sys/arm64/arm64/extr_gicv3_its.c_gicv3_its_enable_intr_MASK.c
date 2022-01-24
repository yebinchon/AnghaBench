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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct intr_irqsrc {int dummy; } ;
struct gicv3_its_softc {int sc_its_flags; scalar_t__ sc_conf_base; } ;
struct gicv3_its_irqsrc {size_t gi_irq; int /*<<< orphan*/  gi_its_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ITS_FLAGS_LPI_CONF_FLUSH ; 
 int /*<<< orphan*/  LPI_CONF_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct gicv3_its_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ishst ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gicv3_its_irqsrc*) ; 

__attribute__((used)) static void
FUNC4(device_t dev, struct intr_irqsrc *isrc)
{
	struct gicv3_its_softc *sc;
	struct gicv3_its_irqsrc *girq;
	uint8_t *conf;

	sc = FUNC1(dev);
	girq = (struct gicv3_its_irqsrc *)isrc;
	conf = (uint8_t *)sc->sc_conf_base;

	conf[girq->gi_irq] |= LPI_CONF_ENABLE;

	if ((sc->sc_its_flags & ITS_FLAGS_LPI_CONF_FLUSH) != 0) {
		/* Clean D-cache under command. */
		FUNC0((vm_offset_t)&conf[girq->gi_irq], 1);
	} else {
		/* DSB inner shareable, store */
		FUNC2(ishst);
	}

	FUNC3(dev, girq->gi_its_dev, girq);
}