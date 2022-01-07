
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {int vcpuid; int vm; } ;
 int EINVAL ;
 int LVTS_TRIGGERRED ;
 int vlapic_enabled (struct vlapic*) ;
 int vlapic_fire_lvt (struct vlapic*,int) ;
 int vm_inject_extint (int ,int ) ;
 int vm_inject_nmi (int ,int ) ;
 int vmm_stat_array_incr (int ,int ,int ,int,int) ;

int
vlapic_trigger_lvt(struct vlapic *vlapic, int vector)
{

 if (vlapic_enabled(vlapic) == 0) {





  switch (vector) {
   case 132:
    vm_inject_extint(vlapic->vm, vlapic->vcpuid);
    break;
   case 131:
    vm_inject_nmi(vlapic->vm, vlapic->vcpuid);
    break;
   default:
    break;
  }
  return (0);
 }

 switch (vector) {
 case 132:
 case 131:
 case 128:
 case 133:
 case 130:
 case 129:
 case 134:
  if (vlapic_fire_lvt(vlapic, vector)) {
   vmm_stat_array_incr(vlapic->vm, vlapic->vcpuid,
       LVTS_TRIGGERRED, vector, 1);
  }
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
