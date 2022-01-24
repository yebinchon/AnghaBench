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
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(vm_object_t obj, loff_t lstart, loff_t lend)
{
	vm_pindex_t start = FUNC0(lstart + PAGE_SIZE - 1);
	vm_pindex_t end = FUNC0(lend + 1);

	(void) FUNC1(obj, start, end, 0);
}