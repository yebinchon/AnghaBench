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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 int /*<<< orphan*/  FUNC1 (struct spglist*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,struct spglist*,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct spglist*,int) ; 

__attribute__((used)) static void
FUNC7(pmap_t pmap, vm_offset_t va, pd_entry_t *pde,
    pd_entry_t oldpde, struct rwlock **lockp)
{
	struct spglist free;
	vm_offset_t sva;

	FUNC1(&free);
	sva = FUNC5(va);
	FUNC4(pmap, pde, sva, &free, lockp);
	if ((oldpde & FUNC2(pmap)) == 0)
		FUNC3(pmap, sva, oldpde);
	FUNC6(&free, true);
	FUNC0(KTR_PMAP, "pmap_demote_pde: failure for va %#lx in pmap %p",
	    va, pmap);
}