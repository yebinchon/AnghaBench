#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_size_t ;
typedef  int vm_ooffset_t ;
typedef  int vm_offset_t ;
typedef  TYPE_1__* vm_object_t ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  pg_color; } ;

/* Variables and functions */
 int OBJ_COLORED ; 
 int PTE1_OFFSET ; 
 int PTE1_SIZE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(vm_object_t object, vm_ooffset_t offset,
    vm_offset_t *addr, vm_size_t size)
{
	vm_offset_t pte1_offset;

	if (size < PTE1_SIZE)
		return;
	if (object != NULL && (object->flags & OBJ_COLORED) != 0)
		offset += FUNC2(object->pg_color);
	pte1_offset = offset & PTE1_OFFSET;
	if (size - ((PTE1_SIZE - pte1_offset) & PTE1_OFFSET) < PTE1_SIZE ||
	    (*addr & PTE1_OFFSET) == pte1_offset)
		return;
	if ((*addr & PTE1_OFFSET) < pte1_offset)
		*addr = FUNC1(*addr) + pte1_offset;
	else
		*addr = FUNC0(*addr) + pte1_offset;
}