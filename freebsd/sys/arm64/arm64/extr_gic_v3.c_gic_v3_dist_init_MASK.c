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
typedef  int uint64_t ;
typedef  scalar_t__ u_int ;
struct gic_v3_softc {scalar_t__ gic_nirqs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIST ; 
 int /*<<< orphan*/  GICD_CTLR ; 
 int GICD_CTLR_ARE_NS ; 
 int GICD_CTLR_G1 ; 
 int GICD_CTLR_G1A ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ GICD_I_PER_ICFGRn ; 
 scalar_t__ GICD_I_PER_IGROUPRn ; 
 scalar_t__ GICD_I_PER_IPRIORITYn ; 
 scalar_t__ GICD_I_PER_ISENABLERn ; 
 scalar_t__ GIC_FIRST_SPI ; 
 int GIC_PRIORITY_MAX ; 
 int /*<<< orphan*/  FUNC6 (struct gic_v3_softc*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gic_v3_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct gic_v3_softc *sc)
{
	uint64_t aff;
	u_int i;

	/*
	 * 1. Disable the Distributor
	 */
	FUNC6(sc, 4, GICD_CTLR, 0);
	FUNC7(sc, DIST);

	/*
	 * 2. Configure the Distributor
	 */
	/* Set all SPIs to be Group 1 Non-secure */
	for (i = GIC_FIRST_SPI; i < sc->gic_nirqs; i += GICD_I_PER_IGROUPRn)
		FUNC6(sc, 4, FUNC3(i), 0xFFFFFFFF);

	/* Set all global interrupts to be level triggered, active low. */
	for (i = GIC_FIRST_SPI; i < sc->gic_nirqs; i += GICD_I_PER_ICFGRn)
		FUNC6(sc, 4, FUNC2(i), 0x00000000);

	/* Set priority to all shared interrupts */
	for (i = GIC_FIRST_SPI;
	    i < sc->gic_nirqs; i += GICD_I_PER_IPRIORITYn) {
		/* Set highest priority */
		FUNC6(sc, 4, FUNC4(i), GIC_PRIORITY_MAX);
	}

	/*
	 * Disable all interrupts. Leave PPI and SGIs as they are enabled in
	 * Re-Distributor registers.
	 */
	for (i = GIC_FIRST_SPI; i < sc->gic_nirqs; i += GICD_I_PER_ISENABLERn)
		FUNC6(sc, 4, FUNC1(i), 0xFFFFFFFF);

	FUNC7(sc, DIST);

	/*
	 * 3. Enable Distributor
	 */
	/* Enable Distributor with ARE, Group 1 */
	FUNC6(sc, 4, GICD_CTLR, GICD_CTLR_ARE_NS | GICD_CTLR_G1A |
	    GICD_CTLR_G1);

	/*
	 * 4. Route all interrupts to boot CPU.
	 */
	aff = FUNC0(0);
	for (i = GIC_FIRST_SPI; i < sc->gic_nirqs; i++)
		FUNC6(sc, 4, FUNC5(i), aff);

	return (0);
}