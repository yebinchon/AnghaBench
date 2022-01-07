
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vmcs {int dummy; } ;
struct seg_desc {int access; int limit; int base; } ;


 int VMCLEAR (struct vmcs*) ;
 scalar_t__ VMCS_INVALID_ENCODING ;
 int VMPTRLD (struct vmcs*) ;
 int panic (char*,int) ;
 int vmcs_seg_desc_encoding (int,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int vmwrite (scalar_t__,int ) ;

int
vmcs_setdesc(struct vmcs *vmcs, int running, int seg, struct seg_desc *desc)
{
 int error;
 uint32_t base, limit, access;

 error = vmcs_seg_desc_encoding(seg, &base, &limit, &access);
 if (error != 0)
  panic("vmcs_setdesc: invalid segment register %d", seg);

 if (!running)
  VMPTRLD(vmcs);
 if ((error = vmwrite(base, desc->base)) != 0)
  goto done;

 if ((error = vmwrite(limit, desc->limit)) != 0)
  goto done;

 if (access != VMCS_INVALID_ENCODING) {
  if ((error = vmwrite(access, desc->access)) != 0)
   goto done;
 }
done:
 if (!running)
  VMCLEAR(vmcs);
 return (error);
}
