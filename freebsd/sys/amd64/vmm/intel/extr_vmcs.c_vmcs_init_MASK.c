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
typedef  int uint64_t ;
typedef  int u_long ;
struct vmcs {int dummy; } ;

/* Variables and functions */
 int CR4_VMXE ; 
 int /*<<< orphan*/  FUNC0 (struct vmcs*) ; 
 int /*<<< orphan*/  VMCS_HOST_CR0 ; 
 int /*<<< orphan*/  VMCS_HOST_CR4 ; 
 int /*<<< orphan*/  VMCS_HOST_CS_SELECTOR ; 
 int /*<<< orphan*/  VMCS_HOST_DS_SELECTOR ; 
 int /*<<< orphan*/  VMCS_HOST_ES_SELECTOR ; 
 int /*<<< orphan*/  VMCS_HOST_FS_BASE ; 
 int /*<<< orphan*/  VMCS_HOST_FS_SELECTOR ; 
 int /*<<< orphan*/  VMCS_HOST_GS_SELECTOR ; 
 int /*<<< orphan*/  VMCS_HOST_IA32_EFER ; 
 int /*<<< orphan*/  VMCS_HOST_IA32_PAT ; 
 int /*<<< orphan*/  VMCS_HOST_IDTR_BASE ; 
 int /*<<< orphan*/  VMCS_HOST_RIP ; 
 int /*<<< orphan*/  VMCS_HOST_SS_SELECTOR ; 
 int /*<<< orphan*/  VMCS_HOST_TR_SELECTOR ; 
 int /*<<< orphan*/  VMCS_LINK_POINTER ; 
 int /*<<< orphan*/  FUNC1 (struct vmcs*) ; 
 scalar_t__ no_flush_rsb ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ vmx_exit_guest ; 
 scalar_t__ vmx_exit_guest_flush_rsb ; 

int
FUNC12(struct vmcs *vmcs)
{
	int error, codesel, datasel, tsssel;
	u_long cr0, cr4, efer;
	uint64_t pat, fsbase, idtrbase;

	codesel = FUNC2();
	datasel = FUNC5();
	tsssel = FUNC10();

	/*
	 * Make sure we have a "current" VMCS to work with.
	 */
	FUNC1(vmcs);

	/* Host state */

	/* Initialize host IA32_PAT MSR */
	pat = FUNC9();
	if ((error = FUNC11(VMCS_HOST_IA32_PAT, pat)) != 0)
		goto done;

	/* Load the IA32_EFER MSR */
	efer = FUNC6();
	if ((error = FUNC11(VMCS_HOST_IA32_EFER, efer)) != 0)
		goto done;

	/* Load the control registers */

	cr0 = FUNC3();
	if ((error = FUNC11(VMCS_HOST_CR0, cr0)) != 0)
		goto done;
	
	cr4 = FUNC4() | CR4_VMXE;
	if ((error = FUNC11(VMCS_HOST_CR4, cr4)) != 0)
		goto done;

	/* Load the segment selectors */
	if ((error = FUNC11(VMCS_HOST_ES_SELECTOR, datasel)) != 0)
		goto done;

	if ((error = FUNC11(VMCS_HOST_CS_SELECTOR, codesel)) != 0)
		goto done;

	if ((error = FUNC11(VMCS_HOST_SS_SELECTOR, datasel)) != 0)
		goto done;

	if ((error = FUNC11(VMCS_HOST_DS_SELECTOR, datasel)) != 0)
		goto done;

	if ((error = FUNC11(VMCS_HOST_FS_SELECTOR, datasel)) != 0)
		goto done;

	if ((error = FUNC11(VMCS_HOST_GS_SELECTOR, datasel)) != 0)
		goto done;

	if ((error = FUNC11(VMCS_HOST_TR_SELECTOR, tsssel)) != 0)
		goto done;

	/*
	 * Load the Base-Address for %fs and idtr.
	 *
	 * Note that we exclude %gs, tss and gdtr here because their base
	 * address is pcpu specific.
	 */
	fsbase = FUNC7();
	if ((error = FUNC11(VMCS_HOST_FS_BASE, fsbase)) != 0)
		goto done;

	idtrbase = FUNC8();
	if ((error = FUNC11(VMCS_HOST_IDTR_BASE, idtrbase)) != 0)
		goto done;

	/* instruction pointer */
	if (no_flush_rsb) {
		if ((error = FUNC11(VMCS_HOST_RIP,
		    (u_long)vmx_exit_guest)) != 0)
			goto done;
	} else {
		if ((error = FUNC11(VMCS_HOST_RIP,
		    (u_long)vmx_exit_guest_flush_rsb)) != 0)
			goto done;
	}

	/* link pointer */
	if ((error = FUNC11(VMCS_LINK_POINTER, ~0)) != 0)
		goto done;
done:
	FUNC0(vmcs);
	return (error);
}