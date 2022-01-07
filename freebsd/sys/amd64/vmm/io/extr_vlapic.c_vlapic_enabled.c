
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {int msr_apicbase; struct LAPIC* apic_page; } ;
struct LAPIC {int svr; } ;


 int APICBASE_ENABLED ;
 int APIC_SVR_ENABLE ;

bool
vlapic_enabled(struct vlapic *vlapic)
{
 struct LAPIC *lapic = vlapic->apic_page;

 if ((vlapic->msr_apicbase & APICBASE_ENABLED) != 0 &&
     (lapic->svr & APIC_SVR_ENABLE) != 0)
  return (1);
 else
  return (0);
}
