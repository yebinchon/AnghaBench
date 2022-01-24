#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  TYPE_2__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
struct rwlock {int dummy; } ;
typedef  scalar_t__ pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_5__ {scalar_t__ pv_memattr; } ;
struct TYPE_6__ {int oflags; TYPE_1__ md; } ;

/* Variables and functions */
 int ATTR_AF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATTR_AP_RO ; 
 int /*<<< orphan*/  ATTR_AP_USER ; 
 int ATTR_DEFAULT ; 
 int FUNC1 (scalar_t__) ; 
 int ATTR_PXN ; 
 int ATTR_SW_MANAGED ; 
 int ATTR_UXN ; 
 int ATTR_XN ; 
 int ATTR_nG ; 
 scalar_t__ DEVICE_MEMORY ; 
 scalar_t__ KERN_SUCCESS ; 
 int L2_BLOCK ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PMAP_ENTER_NORECLAIM ; 
 int PMAP_ENTER_NOREPLACE ; 
 int PMAP_ENTER_NOSLEEP ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ VM_MAXUSER_ADDRESS ; 
 int FUNC3 (TYPE_2__*) ; 
 int VM_PROT_EXECUTE ; 
 int VPO_UNMANAGED ; 
 scalar_t__ kernel_pmap ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ *,struct rwlock**) ; 

__attribute__((used)) static bool
FUNC5(pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot,
    struct rwlock **lockp)
{
	pd_entry_t new_l2;

	FUNC2(pmap, MA_OWNED);

	new_l2 = (pd_entry_t)(FUNC3(m) | ATTR_DEFAULT |
	    FUNC1(m->md.pv_memattr) | FUNC0(ATTR_AP_RO) | L2_BLOCK);
	if ((m->oflags & VPO_UNMANAGED) == 0) {
		new_l2 |= ATTR_SW_MANAGED;
		new_l2 &= ~ATTR_AF;
	}
	if ((prot & VM_PROT_EXECUTE) == 0 || m->md.pv_memattr == DEVICE_MEMORY)
		new_l2 |= ATTR_XN;
	if (va < VM_MAXUSER_ADDRESS)
		new_l2 |= FUNC0(ATTR_AP_USER) | ATTR_PXN;
	else
		new_l2 |= ATTR_UXN;
	if (pmap != kernel_pmap)
		new_l2 |= ATTR_nG;
	return (FUNC4(pmap, va, new_l2, PMAP_ENTER_NOSLEEP |
	    PMAP_ENTER_NOREPLACE | PMAP_ENTER_NORECLAIM, NULL, lockp) ==
	    KERN_SUCCESS);
}