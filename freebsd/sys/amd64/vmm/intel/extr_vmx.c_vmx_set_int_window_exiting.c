
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmx {int vm; TYPE_1__* cap; } ;
struct TYPE_2__ {int proc_ctls; } ;


 int PROCBASED_INT_WINDOW_EXITING ;
 int VCPU_CTR0 (int ,int,char*) ;
 int VMCS_PRI_PROC_BASED_CTLS ;
 int vmcs_write (int ,int) ;

__attribute__((used)) static void __inline
vmx_set_int_window_exiting(struct vmx *vmx, int vcpu)
{

 if ((vmx->cap[vcpu].proc_ctls & PROCBASED_INT_WINDOW_EXITING) == 0) {
  vmx->cap[vcpu].proc_ctls |= PROCBASED_INT_WINDOW_EXITING;
  vmcs_write(VMCS_PRI_PROC_BASED_CTLS, vmx->cap[vcpu].proc_ctls);
  VCPU_CTR0(vmx->vm, vcpu, "Enabling interrupt window exiting");
 }
}
