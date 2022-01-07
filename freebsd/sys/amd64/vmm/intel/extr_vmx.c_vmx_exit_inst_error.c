
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmxctx {scalar_t__ inst_fail_status; } ;
struct TYPE_3__ {scalar_t__ status; int inst_type; int exit_qualification; int exit_reason; int inst_error; } ;
struct TYPE_4__ {TYPE_1__ vmx; } ;
struct vm_exit {TYPE_2__ u; int exitcode; scalar_t__ inst_length; } ;


 int KASSERT (int,char*) ;



 int VM_EXITCODE_VMX ;
 scalar_t__ VM_SUCCESS ;
 int panic (char*,int) ;
 int vmcs_instruction_error () ;

__attribute__((used)) static __inline void
vmx_exit_inst_error(struct vmxctx *vmxctx, int rc, struct vm_exit *vmexit)
{

 KASSERT(vmxctx->inst_fail_status != VM_SUCCESS,
     ("vmx_exit_inst_error: invalid inst_fail_status %d",
     vmxctx->inst_fail_status));

 vmexit->inst_length = 0;
 vmexit->exitcode = VM_EXITCODE_VMX;
 vmexit->u.vmx.status = vmxctx->inst_fail_status;
 vmexit->u.vmx.inst_error = vmcs_instruction_error();
 vmexit->u.vmx.exit_reason = ~0;
 vmexit->u.vmx.exit_qualification = ~0;

 switch (rc) {
 case 128:
 case 129:
 case 130:
  vmexit->u.vmx.inst_type = rc;
  break;
 default:
  panic("vm_exit_inst_error: vmx_enter_guest returned %d", rc);
 }
}
