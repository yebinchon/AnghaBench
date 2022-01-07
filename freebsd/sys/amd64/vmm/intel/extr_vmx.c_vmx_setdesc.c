
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmx {int * vmcs; int vm; } ;
struct seg_desc {int dummy; } ;


 int curcpu ;
 int panic (char*,int ,int) ;
 int vcpu_is_running (int ,int,int*) ;
 int vm_name (int ) ;
 int vmcs_setdesc (int *,int,int,struct seg_desc*) ;

__attribute__((used)) static int
vmx_setdesc(void *arg, int vcpu, int reg, struct seg_desc *desc)
{
 int hostcpu, running;
 struct vmx *vmx = arg;

 running = vcpu_is_running(vmx->vm, vcpu, &hostcpu);
 if (running && hostcpu != curcpu)
  panic("vmx_setdesc: %s%d is running", vm_name(vmx->vm), vcpu);

 return (vmcs_setdesc(&vmx->vmcs[vcpu], running, reg, desc));
}
