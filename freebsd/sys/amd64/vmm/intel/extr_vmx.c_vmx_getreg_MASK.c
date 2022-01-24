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
struct vmx {int /*<<< orphan*/ * vmcs; int /*<<< orphan*/ * ctx; int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int VM_REG_GUEST_INTR_SHADOW ; 
 int curcpu ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct vmx*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(void *arg, int vcpu, int reg, uint64_t *retval)
{
	int running, hostcpu;
	struct vmx *vmx = arg;

	running = FUNC1(vmx->vm, vcpu, &hostcpu);
	if (running && hostcpu != curcpu)
		FUNC0("vmx_getreg: %s%d is running", FUNC2(vmx->vm), vcpu);

	if (reg == VM_REG_GUEST_INTR_SHADOW)
		return (FUNC4(vmx, vcpu, running, retval));

	if (FUNC5(&vmx->ctx[vcpu], reg, retval) == 0)
		return (0);

	return (FUNC3(&vmx->vmcs[vcpu], running, reg, retval));
}