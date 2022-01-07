
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;
struct vmx {struct vmcs* vmcs; } ;
struct vmcs {int dummy; } ;
struct vlapic_vtx {struct vmx* vmx; } ;
struct vlapic {size_t vcpuid; int vm; } ;


 int KASSERT (int,char*) ;
 int VMCLEAR (struct vmcs*) ;
 int VMCS_EOI_EXIT (int) ;
 int VMPTRLD (struct vmcs*) ;
 int vcpu_is_running (int ,size_t,int *) ;
 unsigned long vmcs_read (int ) ;
 int vmcs_write (int ,unsigned long) ;

__attribute__((used)) static void
vmx_set_tmr(struct vlapic *vlapic, int vector, bool level)
{
 struct vlapic_vtx *vlapic_vtx;
 struct vmx *vmx;
 struct vmcs *vmcs;
 uint64_t mask, val;

 KASSERT(vector >= 0 && vector <= 255, ("invalid vector %d", vector));
 KASSERT(!vcpu_is_running(vlapic->vm, vlapic->vcpuid, ((void*)0)),
     ("vmx_set_tmr: vcpu cannot be running"));

 vlapic_vtx = (struct vlapic_vtx *)vlapic;
 vmx = vlapic_vtx->vmx;
 vmcs = &vmx->vmcs[vlapic->vcpuid];
 mask = 1UL << (vector % 64);

 VMPTRLD(vmcs);
 val = vmcs_read(VMCS_EOI_EXIT(vector));
 if (level)
  val |= mask;
 else
  val &= ~mask;
 vmcs_write(VMCS_EOI_EXIT(vector), val);
 VMCLEAR(vmcs);
}
