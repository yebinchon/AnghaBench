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
struct vm {struct vcpu* vcpu; } ;
struct vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vcpu*) ; 

void
FUNC3(struct vm *vm, int vcpuid, bool lapic_intr)
{
	struct vcpu *vcpu = &vm->vcpu[vcpuid];

	FUNC0(vcpu);
	FUNC1(vcpu, lapic_intr);
	FUNC2(vcpu);
}