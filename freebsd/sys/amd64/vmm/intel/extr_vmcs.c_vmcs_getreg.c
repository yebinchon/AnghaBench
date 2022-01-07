
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
 int vmread (int,int *) ;

int
vmcs_getreg(struct vmcs *vmcs, int running, int ident, uint64_t *retval)
{
 int error;
 uint32_t encoding;
 if (ident < 0)
  encoding = ident & 0x7fffffff;
 else
  encoding = vmcs_field_encoding(ident);

 if (encoding == (uint32_t)-1)
  return (EINVAL);

 if (!running)
  VMPTRLD(vmcs);

 error = vmread(encoding, retval);

 if (!running)
  VMCLEAR(vmcs);

 return (error);
}
