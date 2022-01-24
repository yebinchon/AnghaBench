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
struct tid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drvdb_head ; 
 int /*<<< orphan*/  drvdb_mtx ; 
 int /*<<< orphan*/  fake_pccard_driver ; 
 int /*<<< orphan*/  fake_pci_driver ; 
 int /*<<< orphan*/  fpu_busy_head ; 
 int /*<<< orphan*/  fpu_busy_mtx ; 
 int /*<<< orphan*/  fpu_free_head ; 
 int /*<<< orphan*/  fpu_free_mtx ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * my_tids ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  x86_newldt ; 

int
FUNC7(void)
{
	FUNC2(&drvdb_head);
	FUNC3(&drvdb_mtx, "Windows driver DB lock",
	    "Windows internal lock", MTX_DEF);

#ifdef __amd64__
	FUNC1(&fpu_free_head);
	FUNC1(&fpu_busy_head);
	FUNC3(&fpu_free_mtx, "free fpu context list lock", NULL, MTX_DEF);
	FUNC3(&fpu_busy_mtx, "busy fpu context list lock", NULL, MTX_DEF);
#endif

	/*
	 * PCI and pccard devices don't need to use IRPs to
	 * interact with their bus drivers (usually), so our
	 * emulated PCI and pccard drivers are just stubs.
	 * USB devices, on the other hand, do all their I/O
	 * by exchanging IRPs with the USB bus driver, so
	 * for that we need to provide emulator dispatcher
	 * routines, which are in a separate module.
	 */

	FUNC6(&fake_pci_driver, "PCI Bus");
	FUNC6(&fake_pccard_driver, "PCCARD Bus");

#ifdef __i386__

	/*
	 * In order to properly support SMP machines, we have
	 * to modify the GDT on each CPU, since we never know
	 * on which one we'll end up running.
	 */

	my_tids = ExAllocatePoolWithTag(NonPagedPool,
	    sizeof(struct tid) * mp_ncpus, 0);
	if (my_tids == NULL)
		panic("failed to allocate thread info blocks");
	smp_rendezvous(NULL, x86_newldt, NULL, NULL);
#endif
	return (0);
}