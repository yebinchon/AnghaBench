
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmx {int * pir_desc; int * apic_page; int vm; } ;
struct vlapic_vtx {struct vmx* vmx; int * pir_desc; } ;
struct TYPE_2__ {int post_intr; int enable_x2apic_mode; int set_tmr; int intr_accepted; int pending_intr; int set_intr_ready; } ;
struct vlapic {int vcpuid; TYPE_1__ ops; struct LAPIC* apic_page; int vm; } ;
struct LAPIC {int dummy; } ;


 int M_VLAPIC ;
 int M_WAITOK ;
 int M_ZERO ;
 struct vlapic* malloc (int,int ,int) ;
 scalar_t__ posted_interrupts ;
 scalar_t__ virtual_interrupt_delivery ;
 int vlapic_init (struct vlapic*) ;
 int vmx_enable_x2apic_mode ;
 int vmx_intr_accepted ;
 int vmx_pending_intr ;
 int vmx_post_intr ;
 int vmx_set_intr_ready ;
 int vmx_set_tmr ;

__attribute__((used)) static struct vlapic *
vmx_vlapic_init(void *arg, int vcpuid)
{
 struct vmx *vmx;
 struct vlapic *vlapic;
 struct vlapic_vtx *vlapic_vtx;

 vmx = arg;

 vlapic = malloc(sizeof(struct vlapic_vtx), M_VLAPIC, M_WAITOK | M_ZERO);
 vlapic->vm = vmx->vm;
 vlapic->vcpuid = vcpuid;
 vlapic->apic_page = (struct LAPIC *)&vmx->apic_page[vcpuid];

 vlapic_vtx = (struct vlapic_vtx *)vlapic;
 vlapic_vtx->pir_desc = &vmx->pir_desc[vcpuid];
 vlapic_vtx->vmx = vmx;

 if (virtual_interrupt_delivery) {
  vlapic->ops.set_intr_ready = vmx_set_intr_ready;
  vlapic->ops.pending_intr = vmx_pending_intr;
  vlapic->ops.intr_accepted = vmx_intr_accepted;
  vlapic->ops.set_tmr = vmx_set_tmr;
  vlapic->ops.enable_x2apic_mode = vmx_enable_x2apic_mode;
 }

 if (posted_interrupts)
  vlapic->ops.post_intr = vmx_post_intr;

 vlapic_init(vlapic);

 return (vlapic);
}
