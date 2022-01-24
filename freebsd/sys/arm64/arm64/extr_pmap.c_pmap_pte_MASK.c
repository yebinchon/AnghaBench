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
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int ATTR_DESCR_MASK ; 
 int L1_BLOCK ; 
 int L1_TABLE ; 
 int L2_BLOCK ; 
 int L2_TABLE ; 
 int L3_PAGE ; 
 int* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int*) ; 

__attribute__((used)) static __inline pt_entry_t *
FUNC4(pmap_t pmap, vm_offset_t va, int *level)
{
	pd_entry_t *l1, *l2, desc;
	pt_entry_t *l3;

	l1 = FUNC0(pmap, va);
	if (l1 == NULL) {
		*level = 0;
		return (NULL);
	}
	desc = FUNC3(l1) & ATTR_DESCR_MASK;
	if (desc == L1_BLOCK) {
		*level = 1;
		return (l1);
	}

	if (desc != L1_TABLE) {
		*level = 1;
		return (NULL);
	}

	l2 = FUNC1(l1, va);
	desc = FUNC3(l2) & ATTR_DESCR_MASK;
	if (desc == L2_BLOCK) {
		*level = 2;
		return (l2);
	}

	if (desc != L2_TABLE) {
		*level = 2;
		return (NULL);
	}

	*level = 3;
	l3 = FUNC2(l2, va);
	if ((FUNC3(l3) & ATTR_DESCR_MASK) != L3_PAGE)
		return (NULL);

	return (l3);
}