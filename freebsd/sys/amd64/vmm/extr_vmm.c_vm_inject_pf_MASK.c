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
typedef  int /*<<< orphan*/  uint64_t ;
struct vm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDT_PF ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_REG_GUEST_CR2 ; 
 int /*<<< orphan*/  FUNC2 (struct vm*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct vm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(void *vmarg, int vcpuid, int error_code, uint64_t cr2)
{
	struct vm *vm;
	int error;

	vm = vmarg;
	FUNC1(vm, vcpuid, "Injecting page fault: error_code %#x, cr2 %#lx",
	    error_code, cr2);

	error = FUNC3(vm, vcpuid, VM_REG_GUEST_CR2, cr2);
	FUNC0(error == 0, ("vm_set_register(cr2) error %d", error));

	FUNC2(vm, vcpuid, IDT_PF, 1, error_code);
}