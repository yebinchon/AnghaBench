
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {int vcpuid; int vm; } ;


 int APIC_LVT_TIMER ;
 int KASSERT (int ,char*) ;
 int VLAPIC_CTR0 (struct vlapic*,char*) ;
 int VLAPIC_INTR_TIMER ;
 int VLAPIC_TIMER_LOCKED (struct vlapic*) ;
 scalar_t__ vlapic_fire_lvt (struct vlapic*,int ) ;
 int vmm_stat_incr (int ,int ,int ,int) ;

__attribute__((used)) static void
vlapic_fire_timer(struct vlapic *vlapic)
{

 KASSERT(VLAPIC_TIMER_LOCKED(vlapic), ("vlapic_fire_timer not locked"));

 if (vlapic_fire_lvt(vlapic, APIC_LVT_TIMER)) {
  VLAPIC_CTR0(vlapic, "vlapic timer fired");
  vmm_stat_incr(vlapic->vm, vlapic->vcpuid, VLAPIC_INTR_TIMER, 1);
 }
}
