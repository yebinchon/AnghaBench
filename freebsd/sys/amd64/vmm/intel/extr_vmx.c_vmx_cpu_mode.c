
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum vm_cpu_mode { ____Placeholder_vm_cpu_mode } vm_cpu_mode ;


 int CPU_MODE_64BIT ;
 int CPU_MODE_COMPATIBILITY ;
 int CPU_MODE_PROTECTED ;
 int CPU_MODE_REAL ;
 int CR0_PE ;
 int EFER_LMA ;
 int VMCS_GUEST_CR0 ;
 int VMCS_GUEST_CS_ACCESS_RIGHTS ;
 int VMCS_GUEST_IA32_EFER ;
 int vmcs_read (int ) ;

__attribute__((used)) static enum vm_cpu_mode
vmx_cpu_mode(void)
{
 uint32_t csar;

 if (vmcs_read(VMCS_GUEST_IA32_EFER) & EFER_LMA) {
  csar = vmcs_read(VMCS_GUEST_CS_ACCESS_RIGHTS);
  if (csar & 0x2000)
   return (CPU_MODE_64BIT);
  else
   return (CPU_MODE_COMPATIBILITY);
 } else if (vmcs_read(VMCS_GUEST_CR0) & CR0_PE) {
  return (CPU_MODE_PROTECTED);
 } else {
  return (CPU_MODE_REAL);
 }
}
