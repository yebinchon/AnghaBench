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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct vmcs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmcs*) ; 
 int /*<<< orphan*/  VMCS_ENTRY_MSR_LOAD ; 
 int /*<<< orphan*/  VMCS_ENTRY_MSR_LOAD_COUNT ; 
 int /*<<< orphan*/  VMCS_EXIT_MSR_STORE ; 
 int /*<<< orphan*/  VMCS_EXIT_MSR_STORE_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct vmcs*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct vmcs *vmcs, u_long g_area, u_int g_count)
{
	int error;

	FUNC1(vmcs);

	/*
	 * Guest MSRs are saved in the VM-exit MSR-store area.
	 * Guest MSRs are loaded from the VM-entry MSR-load area.
	 * Both areas point to the same location in memory.
	 */
	if ((error = FUNC2(VMCS_EXIT_MSR_STORE, g_area)) != 0)
		goto done;
	if ((error = FUNC2(VMCS_EXIT_MSR_STORE_COUNT, g_count)) != 0)
		goto done;

	if ((error = FUNC2(VMCS_ENTRY_MSR_LOAD, g_area)) != 0)
		goto done;
	if ((error = FUNC2(VMCS_ENTRY_MSR_LOAD_COUNT, g_count)) != 0)
		goto done;

	error = 0;
done:
	FUNC0(vmcs);
	return (error);
}