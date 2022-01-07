
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {int vcpuid; int vm; } ;


 int APIC_LVT_CMCI ;
 int VLAPIC_INTR_CMC ;
 scalar_t__ vlapic_fire_lvt (struct vlapic*,int ) ;
 int vmm_stat_incr (int ,int ,int ,int) ;

void
vlapic_fire_cmci(struct vlapic *vlapic)
{

 if (vlapic_fire_lvt(vlapic, APIC_LVT_CMCI)) {
  vmm_stat_incr(vlapic->vm, vlapic->vcpuid, VLAPIC_INTR_CMC, 1);
 }
}
