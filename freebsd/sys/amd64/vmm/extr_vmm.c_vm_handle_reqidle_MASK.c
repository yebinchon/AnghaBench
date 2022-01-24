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
struct vcpu {scalar_t__ reqidle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct vcpu*) ; 

__attribute__((used)) static int
FUNC3(struct vm *vm, int vcpuid, bool *retu)
{
	struct vcpu *vcpu = &vm->vcpu[vcpuid];

	FUNC1(vcpu);
	FUNC0(vcpu->reqidle, ("invalid vcpu reqidle %d", vcpu->reqidle));
	vcpu->reqidle = 0;
	FUNC2(vcpu);
	*retu = true;
	return (0);
}