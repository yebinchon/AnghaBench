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
typedef  int u_int ;
struct arm_gic_softc {int /*<<< orphan*/  mutex; } ;
typedef  enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef  enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GICD_ICFGR_POL_HIGH ; 
 int GICD_ICFGR_POL_LOW ; 
 int GICD_ICFGR_POL_MASK ; 
 int GICD_ICFGR_TRIG_EDGE ; 
 int GICD_ICFGR_TRIG_LVL ; 
 int GICD_ICFGR_TRIG_MASK ; 
 int GIC_FIRST_SPI ; 
 int INTR_POLARITY_HIGH ; 
 int INTR_POLARITY_LOW ; 
 int INTR_TRIGGER_EDGE ; 
 int INTR_TRIGGER_LEVEL ; 
 int FUNC1 (struct arm_gic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct arm_gic_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct arm_gic_softc *sc, u_int irq, enum intr_trigger trig,
    enum intr_polarity pol)
{
	uint32_t reg;
	uint32_t mask;

	if (irq < GIC_FIRST_SPI)
		return;

	FUNC3(&sc->mutex);

	reg = FUNC1(sc, FUNC0(irq));
	mask = (reg >> 2*(irq % 16)) & 0x3;

	if (pol == INTR_POLARITY_LOW) {
		mask &= ~GICD_ICFGR_POL_MASK;
		mask |= GICD_ICFGR_POL_LOW;
	} else if (pol == INTR_POLARITY_HIGH) {
		mask &= ~GICD_ICFGR_POL_MASK;
		mask |= GICD_ICFGR_POL_HIGH;
	}

	if (trig == INTR_TRIGGER_LEVEL) {
		mask &= ~GICD_ICFGR_TRIG_MASK;
		mask |= GICD_ICFGR_TRIG_LVL;
	} else if (trig == INTR_TRIGGER_EDGE) {
		mask &= ~GICD_ICFGR_TRIG_MASK;
		mask |= GICD_ICFGR_TRIG_EDGE;
	}

	/* Set mask */
	reg = reg & ~(0x3 << 2*(irq % 16));
	reg = reg | (mask << 2*(irq % 16));
	FUNC2(sc, FUNC0(irq), reg);

	FUNC4(&sc->mutex);
}