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
struct gic_v3_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 scalar_t__ GICR_ICENABLER0 ; 
 scalar_t__ GICR_IGROUPR0 ; 
 scalar_t__ GICR_ISENABLER0 ; 
 int GICR_I_ENABLER_PPI_MASK ; 
 int GICR_I_ENABLER_SGI_MASK ; 
 scalar_t__ GICR_I_PER_IPRIORITYn ; 
 scalar_t__ GICR_SGI_BASE_SIZE ; 
 size_t GIC_LAST_PPI ; 
 int GIC_PRIORITY_MAX ; 
 int /*<<< orphan*/  REDIST ; 
 int /*<<< orphan*/  FUNC1 (struct gic_v3_softc*,int,scalar_t__,int) ; 
 int FUNC2 (struct gic_v3_softc*) ; 
 int FUNC3 (struct gic_v3_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct gic_v3_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct gic_v3_softc *sc)
{
	int err;
	size_t i;

	err = FUNC2(sc);
	if (err != 0)
		return (err);

	err = FUNC3(sc);
	if (err != 0)
		return (err);

	/* Configure SGIs and PPIs to be Group1 Non-secure */
	FUNC1(sc, 4, GICR_SGI_BASE_SIZE + GICR_IGROUPR0,
	    0xFFFFFFFF);

	/* Disable SPIs */
	FUNC1(sc, 4, GICR_SGI_BASE_SIZE + GICR_ICENABLER0,
	    GICR_I_ENABLER_PPI_MASK);
	/* Enable SGIs */
	FUNC1(sc, 4, GICR_SGI_BASE_SIZE + GICR_ISENABLER0,
	    GICR_I_ENABLER_SGI_MASK);

	/* Set priority for SGIs and PPIs */
	for (i = 0; i <= GIC_LAST_PPI; i += GICR_I_PER_IPRIORITYn) {
		FUNC1(sc, 4, GICR_SGI_BASE_SIZE + FUNC0(i),
		    GIC_PRIORITY_MAX);
	}

	FUNC4(sc, REDIST);

	return (0);
}