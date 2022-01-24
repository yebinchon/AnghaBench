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
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int u_int ;
struct rwlock {int dummy; } ;
struct md_page {int /*<<< orphan*/  pv_gen; int /*<<< orphan*/  pv_list; } ;
typedef  TYPE_1__* pv_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_4__ {int /*<<< orphan*/  pv_va; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rwlock**,int) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PG_PS_FRAME ; 
 int PMAP_ENTER_NORECLAIM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,struct rwlock**) ; 
 struct md_page* FUNC4 (int) ; 
 int /*<<< orphan*/  pv_next ; 

__attribute__((used)) static bool
FUNC5(pmap_t pmap, vm_offset_t va, pd_entry_t pde, u_int flags,
    struct rwlock **lockp)
{
	struct md_page *pvh;
	pv_entry_t pv;
	vm_paddr_t pa;

	FUNC1(pmap, MA_OWNED);
	/* Pass NULL instead of the lock pointer to disable reclamation. */
	if ((pv = FUNC3(pmap, (flags & PMAP_ENTER_NORECLAIM) != 0 ?
	    NULL : lockp)) == NULL)
		return (false);
	pv->pv_va = va;
	pa = pde & PG_PS_FRAME;
	FUNC0(lockp, pa);
	pvh = FUNC4(pa);
	FUNC2(&pvh->pv_list, pv, pv_next);
	pvh->pv_gen++;
	return (true);
}