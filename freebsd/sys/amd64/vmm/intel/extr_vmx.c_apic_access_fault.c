
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vmx {int dummy; } ;


 scalar_t__ DEFAULT_APIC_BASE ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ apic_access_virtualization (struct vmx*,int) ;

__attribute__((used)) static bool
apic_access_fault(struct vmx *vmx, int vcpuid, uint64_t gpa)
{

 if (apic_access_virtualization(vmx, vcpuid) &&
     (gpa >= DEFAULT_APIC_BASE && gpa < DEFAULT_APIC_BASE + PAGE_SIZE))
  return (1);
 else
  return (0);
}
