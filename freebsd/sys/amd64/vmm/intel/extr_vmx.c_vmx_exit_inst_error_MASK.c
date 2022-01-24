#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vmxctx {scalar_t__ inst_fail_status; } ;
struct TYPE_3__ {scalar_t__ status; int inst_type; int /*<<< orphan*/  exit_qualification; int /*<<< orphan*/  exit_reason; int /*<<< orphan*/  inst_error; } ;
struct TYPE_4__ {TYPE_1__ vmx; } ;
struct vm_exit {TYPE_2__ u; int /*<<< orphan*/  exitcode; scalar_t__ inst_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
#define  VMX_INVEPT_ERROR 130 
#define  VMX_VMLAUNCH_ERROR 129 
#define  VMX_VMRESUME_ERROR 128 
 int /*<<< orphan*/  VM_EXITCODE_VMX ; 
 scalar_t__ VM_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static __inline void
FUNC3(struct vmxctx *vmxctx, int rc, struct vm_exit *vmexit)
{

	FUNC0(vmxctx->inst_fail_status != VM_SUCCESS,
	    ("vmx_exit_inst_error: invalid inst_fail_status %d",
	    vmxctx->inst_fail_status));

	vmexit->inst_length = 0;
	vmexit->exitcode = VM_EXITCODE_VMX;
	vmexit->u.vmx.status = vmxctx->inst_fail_status;
	vmexit->u.vmx.inst_error = FUNC2();
	vmexit->u.vmx.exit_reason = ~0;
	vmexit->u.vmx.exit_qualification = ~0;

	switch (rc) {
	case VMX_VMRESUME_ERROR:
	case VMX_VMLAUNCH_ERROR:
	case VMX_INVEPT_ERROR:
		vmexit->u.vmx.inst_type = rc;
		break;
	default:
		FUNC1("vm_exit_inst_error: vmx_enter_guest returned %d", rc);
	}
}