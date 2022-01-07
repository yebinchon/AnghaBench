
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlapic {int dummy; } ;


 int vlapic_get_id (struct vlapic*) ;

__attribute__((used)) static uint32_t
x2apic_ldr(struct vlapic *vlapic)
{
 int apicid;
 uint32_t ldr;

 apicid = vlapic_get_id(vlapic);
 ldr = 1 << (apicid & 0xf);
 ldr |= (apicid & 0xffff0) << 12;
 return (ldr);
}
