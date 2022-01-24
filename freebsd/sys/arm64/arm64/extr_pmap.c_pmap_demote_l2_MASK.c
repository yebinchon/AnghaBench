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
struct rwlock {int dummy; } ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC1 (struct rwlock*) ; 

__attribute__((used)) static pt_entry_t *
FUNC2(pmap_t pmap, pt_entry_t *l2, vm_offset_t va)
{
	struct rwlock *lock;
	pt_entry_t *l3;

	lock = NULL;
	l3 = FUNC0(pmap, l2, va, &lock);
	if (lock != NULL)
		FUNC1(lock);
	return (l3);
}