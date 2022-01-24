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
typedef  int /*<<< orphan*/  pt2_entry_t ;
typedef  int /*<<< orphan*/  pt1_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

boolean_t
FUNC8(pmap_t pmap, vm_offset_t addr)
{
	pt1_entry_t pte1;
	pt2_entry_t pte2;
	boolean_t rv;

	rv = FALSE;
	FUNC0(pmap);
	pte1 = FUNC5(FUNC2(pmap, addr));
	if (FUNC4(pte1)) {
		pte2 = FUNC7(FUNC3(addr));
		rv = !FUNC6(pte2) ;
	}
	FUNC1(pmap);
	return (rv);
}