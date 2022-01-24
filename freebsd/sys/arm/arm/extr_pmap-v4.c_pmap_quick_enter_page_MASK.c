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

/* Variables and functions */
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qmap_addr ; 
 int /*<<< orphan*/  qmap_mtx ; 

vm_offset_t
FUNC4(vm_page_t m)
{
	/*
	 * Don't bother with a PCPU pageframe, since we don't support
	 * SMP for anything pre-armv7.  Use pmap_kenter() to ensure
	 * caching is handled correctly for multiple mappings of the
	 * same physical page.
	 */

	FUNC1(&qmap_mtx, MA_NOTOWNED);
	FUNC2(&qmap_mtx);

	FUNC3(qmap_addr, FUNC0(m));

	return (qmap_addr);
}