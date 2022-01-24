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
struct vmmap {unsigned long vm_size; void* vm_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct vmmap*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (void*) ; 
 struct vmmap* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_next ; 
 int /*<<< orphan*/ * vmmaphead ; 
 int /*<<< orphan*/  vmmaplock ; 

__attribute__((used)) static void
FUNC5(void *addr, unsigned long size)
{
	struct vmmap *vmmap;

	vmmap = FUNC2(sizeof(*vmmap), GFP_KERNEL);
	FUNC3(&vmmaplock);
	vmmap->vm_size = size;
	vmmap->vm_addr = addr;
	FUNC0(&vmmaphead[FUNC1(addr)], vmmap, vm_next);
	FUNC4(&vmmaplock);
}