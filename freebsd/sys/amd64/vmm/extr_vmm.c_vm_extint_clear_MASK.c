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
struct vm {int maxcpus; struct vcpu* vcpu; } ;
struct vcpu {scalar_t__ extint_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCPU_EXTINT_COUNT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct vm*,int,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct vm *vm, int vcpuid)
{
	struct vcpu *vcpu;

	if (vcpuid < 0 || vcpuid >= vm->maxcpus)
		FUNC0("vm_extint_pending: invalid vcpuid %d", vcpuid);

	vcpu = &vm->vcpu[vcpuid];

	if (vcpu->extint_pending == 0)
		FUNC0("vm_extint_clear: inconsistent extint_pending state");

	vcpu->extint_pending = 0;
	FUNC1(vm, vcpuid, VCPU_EXTINT_COUNT, 1);
}