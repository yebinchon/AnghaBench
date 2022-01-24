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

/* Variables and functions */
 uintptr_t ERR_IRQ ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,uintptr_t) ; 
 int /*<<< orphan*/  MPIC_ICE ; 
 uintptr_t MPIC_INT_LOCAL ; 
 scalar_t__ MPIC_ISM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t) ; 
 uintptr_t MSI_IRQ ; 
 int mp_ncpus ; 
 scalar_t__ FUNC3 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC4 (uintptr_t) ; 
 int /*<<< orphan*/  mv_mpic_sc ; 

__attribute__((used)) static void
FUNC5(uintptr_t nb)
{

#ifdef SMP
	int cpu;

	if (nb == MPIC_INT_LOCAL) {
		for (cpu = 0; cpu < mp_ncpus; cpu++)
			MPIC_CPU_WRITE(mv_mpic_sc,
			    MPIC_CPU(cpu) + MPIC_ISM, nb);
		return;
	}
#endif
	if (FUNC3(nb))
		FUNC1(mv_mpic_sc, MPIC_ISM, nb);
	else if (nb < ERR_IRQ)
		FUNC2(mv_mpic_sc, MPIC_ICE, nb);
	else if (nb < MSI_IRQ)
		FUNC4(nb);
}