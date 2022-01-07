
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMCS_CR0_SHADOW ;
 int VMCS_CR4_SHADOW ;



__attribute__((used)) static int
vmx_shadow_reg(int reg)
{
 int shreg;

 shreg = -1;

 switch (reg) {
 case 129:
  shreg = VMCS_CR0_SHADOW;
  break;
 case 128:
  shreg = VMCS_CR4_SHADOW;
  break;
 default:
  break;
 }

 return (shreg);
}
