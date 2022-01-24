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
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int,struct spglist*,struct rwlock**) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rwlock*) ; 

__attribute__((used)) static void
FUNC6(pmap_t pmap, vm_offset_t va, pd_entry_t *pde,
    struct spglist *free)
{
	struct rwlock *lock;
	pt_entry_t *pte, PG_V;

	PG_V = FUNC4(pmap);
	FUNC0(pmap, MA_OWNED);
	if ((*pde & PG_V) == 0)
		return;
	pte = FUNC2(pde, va);
	if ((*pte & PG_V) == 0)
		return;
	lock = NULL;
	FUNC3(pmap, pte, va, *pde, free, &lock);
	if (lock != NULL)
		FUNC5(lock);
	FUNC1(pmap, va);
}