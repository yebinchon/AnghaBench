#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct vmx {int /*<<< orphan*/  vm; TYPE_1__* cap; } ;
struct TYPE_2__ {int proc_ctls; } ;

/* Variables and functions */
 int PROCBASED_TSC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  VMCS_PRI_PROC_BASED_CTLS ; 
 int /*<<< orphan*/  VMCS_TSC_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct vmx *vmx, int vcpu, uint64_t offset)
{
	int error;

	if ((vmx->cap[vcpu].proc_ctls & PROCBASED_TSC_OFFSET) == 0) {
		vmx->cap[vcpu].proc_ctls |= PROCBASED_TSC_OFFSET;
		FUNC1(VMCS_PRI_PROC_BASED_CTLS, vmx->cap[vcpu].proc_ctls);
		FUNC0(vmx->vm, vcpu, "Enabling TSC offsetting");
	}

	error = FUNC2(VMCS_TSC_OFFSET, offset);

	return (error);
}