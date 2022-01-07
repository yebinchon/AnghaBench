
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ MSR_APICBASE ;
 scalar_t__ x2apic_msr (scalar_t__) ;

bool
lapic_msr(u_int msr)
{

 return (x2apic_msr(msr) || msr == MSR_APICBASE);
}
