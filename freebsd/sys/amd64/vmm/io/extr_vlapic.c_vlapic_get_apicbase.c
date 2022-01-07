
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vlapic {int msr_apicbase; } ;



uint64_t
vlapic_get_apicbase(struct vlapic *vlapic)
{

 return (vlapic->msr_apicbase);
}
