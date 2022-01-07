
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlapic {int vcpuid; int vm; int esr_pending; } ;


 int APIC_LVT_ERROR ;
 int VLAPIC_INTR_ERROR ;
 scalar_t__ vlapic_fire_lvt (struct vlapic*,int ) ;
 int vmm_stat_incr (int ,int ,int ,int) ;

__attribute__((used)) static void
vlapic_set_error(struct vlapic *vlapic, uint32_t mask, bool lvt_error)
{

 vlapic->esr_pending |= mask;





 if (lvt_error)
  return;

 if (vlapic_fire_lvt(vlapic, APIC_LVT_ERROR)) {
  vmm_stat_incr(vlapic->vm, vlapic->vcpuid, VLAPIC_INTR_ERROR, 1);
 }
}
