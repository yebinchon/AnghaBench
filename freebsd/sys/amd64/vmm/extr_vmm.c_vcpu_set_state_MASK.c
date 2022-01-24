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
struct vcpu {int dummy; } ;
typedef  enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu*) ; 
 int FUNC2 (struct vm*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vcpu*) ; 

int
FUNC4(struct vm *vm, int vcpuid, enum vcpu_state newstate,
    bool from_idle)
{
	int error;
	struct vcpu *vcpu;

	if (vcpuid < 0 || vcpuid >= vm->maxcpus)
		FUNC0("vm_set_run_state: invalid vcpuid %d", vcpuid);

	vcpu = &vm->vcpu[vcpuid];

	FUNC1(vcpu);
	error = FUNC2(vm, vcpuid, newstate, from_idle);
	FUNC3(vcpu);

	return (error);
}