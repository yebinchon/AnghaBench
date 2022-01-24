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
typedef  scalar_t__ vm_offset_t ;
struct gicv3_its_softc {scalar_t__* sc_pend_base; int /*<<< orphan*/  sc_cpus; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LPI_PENDTAB_ALIGN ; 
 int /*<<< orphan*/  LPI_PENDTAB_MAX_ADDR ; 
 int /*<<< orphan*/  LPI_PENDTAB_SIZE ; 
 int /*<<< orphan*/  M_GICV3_ITS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int mp_maxid ; 

__attribute__((used)) static void
FUNC3(struct gicv3_its_softc *sc)
{
	int i;

	for (i = 0; i <= mp_maxid; i++) {
		if (FUNC0(i, &sc->sc_cpus) == 0)
			continue;

		sc->sc_pend_base[i] = (vm_offset_t)FUNC1(
		    LPI_PENDTAB_SIZE, M_GICV3_ITS, M_WAITOK | M_ZERO,
		    0, LPI_PENDTAB_MAX_ADDR, LPI_PENDTAB_ALIGN, 0);

		/* Flush so the ITS can see the memory */
		FUNC2((vm_offset_t)sc->sc_pend_base[i],
		    LPI_PENDTAB_SIZE);
	}
}