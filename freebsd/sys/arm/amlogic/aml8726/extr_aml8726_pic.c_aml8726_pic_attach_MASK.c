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
struct aml8726_pic_softc {int /*<<< orphan*/  res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ AML_PIC_0_FIRQ_SEL ; 
 scalar_t__ AML_PIC_0_MASK_REG ; 
 scalar_t__ AML_PIC_0_STAT_CLR_REG ; 
 int AML_PIC_NCNTRLS ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_pic_softc*,scalar_t__,unsigned int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  aml8726_pic_eoi ; 
 struct aml8726_pic_softc* aml8726_pic_sc ; 
 int /*<<< orphan*/  aml8726_pic_spec ; 
 int /*<<< orphan*/  arm_post_filter ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aml8726_pic_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct aml8726_pic_softc *sc = FUNC2(dev);
	int i;

	/* There should be exactly one instance. */
	if (aml8726_pic_sc != NULL)
		return (ENXIO);

	sc->dev = dev;

	if (FUNC1(dev, aml8726_pic_spec, sc->res)) {
		FUNC3(dev, "could not allocate resources for device\n");
		return (ENXIO);
	}

	/*
	 * Disable, clear, and set the interrupts to normal mode.
	 */
	for (i = 0; i < AML_PIC_NCNTRLS; i++) {
		FUNC0(sc, AML_PIC_0_MASK_REG + i * 16, 0);
		FUNC0(sc, AML_PIC_0_STAT_CLR_REG + i * 16, ~0u);
		FUNC0(sc, AML_PIC_0_FIRQ_SEL + i * 16, 0);
	}

#ifndef DEV_GIC
	arm_post_filter = aml8726_pic_eoi;
#else
	device_printf(dev, "disabled in favor of gic\n");
#endif

	aml8726_pic_sc = sc;

	return (0);
}