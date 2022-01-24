#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  u_int ;
struct pmap_pkru_range {int pkru_flags; int /*<<< orphan*/  pkru_keyidx; } ;
typedef  TYPE_1__* pmap_t ;
struct TYPE_4__ {scalar_t__ pm_type; int /*<<< orphan*/  pm_pkru; } ;

/* Variables and functions */
 int AMD64_PKRU_EXCL ; 
 int AMD64_PKRU_PERSIST ; 
 int CPUID_STDEXT2_PKU ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ PT_X86 ; 
 int cpu_stdext_feature2 ; 
 int /*<<< orphan*/  pmap_pkru_ranges_zone ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pmap_pkru_range*) ; 
 struct pmap_pkru_range* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct pmap_pkru_range*) ; 

__attribute__((used)) static int
FUNC6(pmap_t pmap, vm_offset_t sva, vm_offset_t eva, u_int keyidx,
    int flags)
{
	struct pmap_pkru_range *ppr;
	int error;

	FUNC1(pmap, MA_OWNED);
	FUNC0(pmap->pm_type == PT_X86);
	FUNC0((cpu_stdext_feature2 & CPUID_STDEXT2_PKU) != 0);
	if ((flags & AMD64_PKRU_EXCL) != 0 &&
	    !FUNC2(&pmap->pm_pkru, sva, eva))
		return (EBUSY);
	ppr = FUNC4(pmap_pkru_ranges_zone, M_NOWAIT);
	if (ppr == NULL)
		return (ENOMEM);
	ppr->pkru_keyidx = keyidx;
	ppr->pkru_flags = flags & AMD64_PKRU_PERSIST;
	error = FUNC3(&pmap->pm_pkru, sva, eva, ppr);
	if (error != 0)
		FUNC5(pmap_pkru_ranges_zone, ppr);
	return (error);
}