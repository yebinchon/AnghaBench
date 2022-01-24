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
 int /*<<< orphan*/  IS_PHYSICAL ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ _min_memcpy_size ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

void
FUNC5(vm_page_t src, vm_page_t dst)
{

	FUNC2();
	FUNC3();
	if (&_arm_memcpy && PAGE_SIZE >= _min_memcpy_size &&
	    FUNC1((void *)FUNC0(dst),
	    (void *)FUNC0(src), PAGE_SIZE, IS_PHYSICAL) == 0)
		return;
	FUNC4(FUNC0(src), FUNC0(dst));
}