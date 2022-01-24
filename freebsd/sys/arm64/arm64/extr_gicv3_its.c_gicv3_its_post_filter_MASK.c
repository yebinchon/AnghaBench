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
struct intr_irqsrc {int dummy; } ;
struct gicv3_its_softc {scalar_t__ sc_irq_base; } ;
struct gicv3_its_irqsrc {scalar_t__ gi_irq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EOIR1 ; 
 struct gicv3_its_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(device_t dev, struct intr_irqsrc *isrc)
{
	struct gicv3_its_irqsrc *girq;
	struct gicv3_its_softc *sc;

	sc = FUNC0(dev);
	girq = (struct gicv3_its_irqsrc *)isrc;
	FUNC1(EOIR1, girq->gi_irq + sc->sc_irq_base);
}