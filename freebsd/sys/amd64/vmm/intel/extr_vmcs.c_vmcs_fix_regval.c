
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;




 int vmx_fix_cr0 (int ) ;
 int vmx_fix_cr4 (int ) ;

__attribute__((used)) static uint64_t
vmcs_fix_regval(uint32_t encoding, uint64_t val)
{

 switch (encoding) {
 case 129:
  val = vmx_fix_cr0(val);
  break;
 case 128:
  val = vmx_fix_cr4(val);
  break;
 default:
  break;
 }
 return (val);
}
