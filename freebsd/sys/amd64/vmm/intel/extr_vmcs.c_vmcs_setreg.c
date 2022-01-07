
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct vmcs {int dummy; } ;


 int EINVAL ;
 int VMCLEAR (struct vmcs*) ;
 int VMPTRLD (struct vmcs*) ;
 int vmcs_field_encoding (int) ;
 int vmcs_fix_regval (int,int ) ;
 int vmwrite (int,int ) ;

int
vmcs_setreg(struct vmcs *vmcs, int running, int ident, uint64_t val)
{
 int error;
 uint32_t encoding;

 if (ident < 0)
  encoding = ident & 0x7fffffff;
 else
  encoding = vmcs_field_encoding(ident);

 if (encoding == (uint32_t)-1)
  return (EINVAL);

 val = vmcs_fix_regval(encoding, val);

 if (!running)
  VMPTRLD(vmcs);

 error = vmwrite(encoding, val);

 if (!running)
  VMCLEAR(vmcs);

 return (error);
}
