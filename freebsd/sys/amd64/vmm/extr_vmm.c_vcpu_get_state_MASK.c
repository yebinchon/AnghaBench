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
struct vcpu {int state; int hostcpu; } ;
typedef  enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct vcpu*) ; 

enum vcpu_state
FUNC3(struct vm *vm, int vcpuid, int *hostcpu)
{
	struct vcpu *vcpu;
	enum vcpu_state state;

	if (vcpuid < 0 || vcpuid >= vm->maxcpus)
		FUNC0("vm_get_run_state: invalid vcpuid %d", vcpuid);

	vcpu = &vm->vcpu[vcpuid];

	FUNC1(vcpu);
	state = vcpu->state;
	if (hostcpu != NULL)
		*hostcpu = vcpu->hostcpu;
	FUNC2(vcpu);

	return (state);
}