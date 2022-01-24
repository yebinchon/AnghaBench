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
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;

/* Variables and functions */
 int ATTR_DESCR_MASK ; 
 int L1_TABLE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline pd_entry_t *
FUNC3(pmap_t pmap, vm_offset_t va)
{
	pd_entry_t *l1;

	l1 = FUNC0(pmap, va);
	if ((FUNC2(l1) & ATTR_DESCR_MASK) != L1_TABLE)
		return (NULL);

	return (FUNC1(l1, va));
}