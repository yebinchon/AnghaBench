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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct spglist {int dummy; } ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct spglist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline boolean_t
FUNC5(pmap_t pmap, vm_offset_t va, vm_page_t m, struct spglist *free)
{
	FUNC2(m, FUNC4(va));
	if (FUNC3(m)) {
		/*
		 * QQQ: Wire count is zero, so whole page should be zero and
		 *      we can set PG_ZERO flag to it.
		 *      Note that when promotion is enabled, it takes some
		 *      more efforts. See pmap_unwire_pt2_all() below.
		 */
		FUNC1(pmap, va, m);
		FUNC0(m, free);
		return (TRUE);
	} else
		return (FALSE);
}