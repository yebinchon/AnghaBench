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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  scalar_t__ vm_offset_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAPDEV_ASSERTVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ VM_MIN_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC3(vm_offset_t va, vm_size_t size, vm_prot_t prot)
{
	int error;

	/* Only supported within the kernel map. */
	if (va < VM_MIN_KERNEL_ADDRESS)
		return (EINVAL);

	FUNC0(kernel_pmap);
	error = FUNC2(va, size, prot, -1,
	    MAPDEV_ASSERTVALID);
	FUNC1(kernel_pmap);
	return (error);
}