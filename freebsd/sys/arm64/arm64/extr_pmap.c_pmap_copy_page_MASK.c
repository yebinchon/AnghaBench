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
typedef  scalar_t__ vm_offset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*) ; 

void
FUNC3(vm_page_t msrc, vm_page_t mdst)
{
	vm_offset_t src = FUNC0(FUNC1(msrc));
	vm_offset_t dst = FUNC0(FUNC1(mdst));

	FUNC2((void *)src, (void *)dst);
}