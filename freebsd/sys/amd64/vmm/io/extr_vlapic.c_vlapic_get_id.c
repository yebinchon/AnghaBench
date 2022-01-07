
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlapic {int vcpuid; } ;


 scalar_t__ x2apic (struct vlapic*) ;

__attribute__((used)) static __inline uint32_t
vlapic_get_id(struct vlapic *vlapic)
{

 if (x2apic(vlapic))
  return (vlapic->vcpuid);
 else
  return (vlapic->vcpuid << 24);
}
