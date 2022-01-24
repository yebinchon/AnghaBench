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
typedef  int /*<<< orphan*/  register_t ;
typedef  int /*<<< orphan*/  pt1_entry_t ;
typedef  scalar_t__ pmap_t ;

/* Variables and functions */
 int PSR_F ; 
 int PSR_I ; 
 int /*<<< orphan*/  allpmaps_lock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ kernel_pmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(pmap_t pmap, pt1_entry_t *pte1p, vm_offset_t va,
    pt1_entry_t npte1)
{

	if (pmap == kernel_pmap) {
		FUNC1(&allpmaps_lock);
		FUNC4(va, npte1);
		FUNC2(&allpmaps_lock);
	} else {
		register_t cspr;

		/*
		 * Use break-before-make approach for changing userland
		 * mappings. It's absolutely safe in UP case when interrupts
		 * are disabled.
		 */
		cspr = FUNC0(PSR_I | PSR_F);
		FUNC5(pte1p);
		FUNC3(pmap, va, npte1);
		FUNC6(pte1p, npte1);
		FUNC7(cspr);
	}
}