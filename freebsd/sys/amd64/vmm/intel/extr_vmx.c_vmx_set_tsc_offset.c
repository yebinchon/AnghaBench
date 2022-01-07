
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct vmx {int vm; TYPE_1__* cap; } ;
struct TYPE_2__ {int proc_ctls; } ;


 int PROCBASED_TSC_OFFSET ;
 int VCPU_CTR0 (int ,int,char*) ;
 int VMCS_PRI_PROC_BASED_CTLS ;
 int VMCS_TSC_OFFSET ;
 int vmcs_write (int ,int) ;
 int vmwrite (int ,int ) ;

int
vmx_set_tsc_offset(struct vmx *vmx, int vcpu, uint64_t offset)
{
 int error;

 if ((vmx->cap[vcpu].proc_ctls & PROCBASED_TSC_OFFSET) == 0) {
  vmx->cap[vcpu].proc_ctls |= PROCBASED_TSC_OFFSET;
  vmcs_write(VMCS_PRI_PROC_BASED_CTLS, vmx->cap[vcpu].proc_ctls);
  VCPU_CTR0(vmx->vm, vcpu, "Enabling TSC offsetting");
 }

 error = vmwrite(VMCS_TSC_OFFSET, offset);

 return (error);
}
