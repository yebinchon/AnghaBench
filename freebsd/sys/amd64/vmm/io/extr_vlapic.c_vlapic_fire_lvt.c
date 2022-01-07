
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t u_int ;
struct vlapic {int vcpuid; int vm; int * lvt_last; } ;


 int APIC_ESR_SEND_ILLEGAL_VECTOR ;
 int APIC_LVT_DM ;



 size_t APIC_LVT_ERROR ;
 int APIC_LVT_M ;
 int APIC_LVT_VECTOR ;
 int atomic_load_acq_32 (int *) ;
 int vcpu_notify_event (int ,int ,int) ;
 int vlapic_set_error (struct vlapic*,int ,int) ;
 int vlapic_set_intr_ready (struct vlapic*,int,int) ;
 int vm_inject_extint (int ,int ) ;
 int vm_inject_nmi (int ,int ) ;

__attribute__((used)) static int
vlapic_fire_lvt(struct vlapic *vlapic, u_int lvt)
{
 uint32_t mode, reg, vec;

 reg = atomic_load_acq_32(&vlapic->lvt_last[lvt]);

 if (reg & APIC_LVT_M)
  return (0);
 vec = reg & APIC_LVT_VECTOR;
 mode = reg & APIC_LVT_DM;

 switch (mode) {
 case 129:
  if (vec < 16) {
   vlapic_set_error(vlapic, APIC_ESR_SEND_ILLEGAL_VECTOR,
       lvt == APIC_LVT_ERROR);
   return (0);
  }
  if (vlapic_set_intr_ready(vlapic, vec, 0))
   vcpu_notify_event(vlapic->vm, vlapic->vcpuid, 1);
  break;
 case 128:
  vm_inject_nmi(vlapic->vm, vlapic->vcpuid);
  break;
 case 130:
  vm_inject_extint(vlapic->vm, vlapic->vcpuid);
  break;
 default:

  return (0);
 }
 return (1);
}
