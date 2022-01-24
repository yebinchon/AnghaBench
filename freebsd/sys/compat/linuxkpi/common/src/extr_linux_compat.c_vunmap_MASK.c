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
struct vmmap {int vm_size; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct vmmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct vmmap* FUNC3 (void*) ; 

void
FUNC4(void *addr)
{
	struct vmmap *vmmap;

	vmmap = FUNC3(addr);
	if (vmmap == NULL)
		return;
	FUNC2((vm_offset_t)addr, vmmap->vm_size / PAGE_SIZE);
	FUNC1((vm_offset_t)addr, vmmap->vm_size);
	FUNC0(vmmap);
}