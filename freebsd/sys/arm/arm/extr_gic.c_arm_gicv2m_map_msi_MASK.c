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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct intr_irqsrc {int dummy; } ;
struct gic_irqsrc {int /*<<< orphan*/  gi_irq; } ;
struct arm_gicv2m_softc {int /*<<< orphan*/  sc_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ GICv2M_MSI_SETSPI_NS ; 
 struct arm_gicv2m_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, struct intr_irqsrc *isrc,
    uint64_t *addr, uint32_t *data)
{
	struct arm_gicv2m_softc *sc = FUNC0(dev);
	struct gic_irqsrc *gi = (struct gic_irqsrc *)isrc;

	*addr = FUNC2(FUNC1(sc->sc_mem)) + GICv2M_MSI_SETSPI_NS;
	*data = gi->gi_irq;

	return (0);
}