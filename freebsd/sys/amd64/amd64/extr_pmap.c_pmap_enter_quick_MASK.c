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
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct rwlock {int dummy; } ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC3 (struct rwlock*) ; 

void
FUNC4(pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot)
{
	struct rwlock *lock;

	lock = NULL;
	FUNC0(pmap);
	(void)FUNC2(pmap, va, m, prot, NULL, &lock);
	if (lock != NULL)
		FUNC3(lock);
	FUNC1(pmap);
}