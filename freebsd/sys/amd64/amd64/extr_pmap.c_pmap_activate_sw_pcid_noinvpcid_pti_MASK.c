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
typedef  int /*<<< orphan*/  u_int ;
struct thread {int dummy; } ;
typedef  int /*<<< orphan*/  register_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct thread *td, pmap_t pmap,
    u_int cpuid)
{
	register_t rflags;

	/*
	 * If the INVPCID instruction is not available,
	 * invltlb_pcid_handler() is used to handle an invalidate_all
	 * IPI, which checks for curpmap == smp_tlb_pmap.  The below
	 * sequence of operations has a window where %CR3 is loaded
	 * with the new pmap's PML4 address, but the curpmap value has
	 * not yet been updated.  This causes the invltlb IPI handler,
	 * which is called between the updates, to execute as a NOP,
	 * which leaves stale TLB entries.
	 *
	 * Note that the most typical use of pmap_activate_sw(), from
	 * the context switch, is immune to this race, because
	 * interrupts are disabled (while the thread lock is owned),
	 * and the IPI happens after curpmap is updated.  Protect
	 * other callers in a similar way, by disabling interrupts
	 * around the %cr3 register reload and curpmap assignment.
	 */
	rflags = FUNC0();
	FUNC2(pmap, cpuid, false);
	FUNC1(rflags);
	FUNC3(td, pmap);
}