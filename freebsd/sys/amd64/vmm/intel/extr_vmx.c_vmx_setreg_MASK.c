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
typedef  int uint64_t ;
struct vmx {TYPE_1__* ctx; int /*<<< orphan*/ * vmcs; int /*<<< orphan*/  vm; } ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_2__ {int /*<<< orphan*/  pmap; } ;

/* Variables and functions */
 int EFER_LMA ; 
 int VMCS_ENTRY_CTLS ; 
 int FUNC0 (int) ; 
 int VM_ENTRY_GUEST_LMA ; 
 int VM_ENTRY_LOAD_EFER ; 
 int VM_REG_GUEST_CR3 ; 
 int VM_REG_GUEST_EFER ; 
 int VM_REG_GUEST_INTR_SHADOW ; 
 int curcpu ; 
 int entry_ctls ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vmx*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct vmx*,int,int,int) ; 
 int FUNC8 (int) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int
FUNC10(void *arg, int vcpu, int reg, uint64_t val)
{
	int error, hostcpu, running, shadow;
	uint64_t ctls;
	pmap_t pmap;
	struct vmx *vmx = arg;

	running = FUNC2(vmx->vm, vcpu, &hostcpu);
	if (running && hostcpu != curcpu)
		FUNC1("vmx_setreg: %s%d is running", FUNC3(vmx->vm), vcpu);

	if (reg == VM_REG_GUEST_INTR_SHADOW)
		return (FUNC7(vmx, vcpu, running, val));

	if (FUNC9(&vmx->ctx[vcpu], reg, val) == 0)
		return (0);

	error = FUNC5(&vmx->vmcs[vcpu], running, reg, val);

	if (error == 0) {
		/*
		 * If the "load EFER" VM-entry control is 1 then the
		 * value of EFER.LMA must be identical to "IA-32e mode guest"
		 * bit in the VM-entry control.
		 */
		if ((entry_ctls & VM_ENTRY_LOAD_EFER) != 0 &&
		    (reg == VM_REG_GUEST_EFER)) {
			FUNC4(&vmx->vmcs[vcpu], running,
				    FUNC0(VMCS_ENTRY_CTLS), &ctls);
			if (val & EFER_LMA)
				ctls |= VM_ENTRY_GUEST_LMA;
			else
				ctls &= ~VM_ENTRY_GUEST_LMA;
			FUNC5(&vmx->vmcs[vcpu], running,
				    FUNC0(VMCS_ENTRY_CTLS), ctls);
		}

		shadow = FUNC8(reg);
		if (shadow > 0) {
			/*
			 * Store the unmodified value in the shadow
			 */
			error = FUNC5(&vmx->vmcs[vcpu], running,
				    FUNC0(shadow), val);
		}

		if (reg == VM_REG_GUEST_CR3) {
			/*
			 * Invalidate the guest vcpu's TLB mappings to emulate
			 * the behavior of updating %cr3.
			 *
			 * XXX the processor retains global mappings when %cr3
			 * is updated but vmx_invvpid() does not.
			 */
			pmap = vmx->ctx[vcpu].pmap;
			FUNC6(vmx, vcpu, pmap, running);
		}
	}

	return (error);
}