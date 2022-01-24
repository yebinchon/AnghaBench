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
typedef  int /*<<< orphan*/  vm_page_t ;

/* Variables and functions */
 int VM_ALLOC_NOBUSY ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pti_obj ; 
 int /*<<< orphan*/  pti_pg_idx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static vm_page_t
FUNC2(void)
{
	vm_page_t m;

	FUNC0(pti_obj);
	m = FUNC1(pti_obj, pti_pg_idx++, VM_ALLOC_NOBUSY |
	    VM_ALLOC_WIRED | VM_ALLOC_ZERO);
	return (m);
}