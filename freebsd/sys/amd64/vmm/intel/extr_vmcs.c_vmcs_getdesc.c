
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
typedef scalar_t__ uint32_t ;
struct vmcs {int dummy; } ;
struct seg_desc {void* access; void* limit; void* base; } ;


 int VMCLEAR (struct vmcs*) ;
 scalar_t__ VMCS_INVALID_ENCODING ;
 int VMPTRLD (struct vmcs*) ;
 int panic (char*,int) ;
 int vmcs_seg_desc_encoding (int,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int vmread (scalar_t__,void**) ;

int
vmcs_getdesc(struct vmcs *vmcs, int running, int seg, struct seg_desc *desc)
{
 int error;
 uint32_t base, limit, access;
 uint64_t u64;

 error = vmcs_seg_desc_encoding(seg, &base, &limit, &access);
 if (error != 0)
  panic("vmcs_getdesc: invalid segment register %d", seg);

 if (!running)
  VMPTRLD(vmcs);
 if ((error = vmread(base, &u64)) != 0)
  goto done;
 desc->base = u64;

 if ((error = vmread(limit, &u64)) != 0)
  goto done;
 desc->limit = u64;

 if (access != VMCS_INVALID_ENCODING) {
  if ((error = vmread(access, &u64)) != 0)
   goto done;
  desc->access = u64;
 }
done:
 if (!running)
  VMCLEAR(vmcs);
 return (error);
}
