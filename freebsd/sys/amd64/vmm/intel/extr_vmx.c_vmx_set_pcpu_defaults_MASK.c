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
struct vmxstate {scalar_t__ lastcpu; } ;
struct vmx {int /*<<< orphan*/  vm; struct vmxstate* state; } ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  VCPU_MIGRATIONS ; 
 int /*<<< orphan*/  VMCS_HOST_GDTR_BASE ; 
 int /*<<< orphan*/  VMCS_HOST_GS_BASE ; 
 int /*<<< orphan*/  VMCS_HOST_TR_BASE ; 
 scalar_t__ curcpu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vmx*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct vmx *vmx, int vcpu, pmap_t pmap)
{
	struct vmxstate *vmxstate;

	vmxstate = &vmx->state[vcpu];
	if (vmxstate->lastcpu == curcpu)
		return;

	vmxstate->lastcpu = curcpu;

	FUNC4(vmx->vm, vcpu, VCPU_MIGRATIONS, 1);

	FUNC0(VMCS_HOST_TR_BASE, FUNC3());
	FUNC0(VMCS_HOST_GDTR_BASE, FUNC1());
	FUNC0(VMCS_HOST_GS_BASE, FUNC2());
	FUNC5(vmx, vcpu, pmap, 1);
}