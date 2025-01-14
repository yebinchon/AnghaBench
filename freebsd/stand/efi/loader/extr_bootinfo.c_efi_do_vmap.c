
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINTN ;
typedef int UINT32 ;
struct TYPE_10__ {int (* SetVirtualAddressMap ) (int,int,int ,TYPE_1__*) ;} ;
struct TYPE_9__ {int Attribute; int PhysicalStart; int VirtualStart; } ;
typedef int EFI_STATUS ;
typedef TYPE_1__ EFI_MEMORY_DESCRIPTOR ;


 int EFI_MEMORY_RUNTIME ;
 int EFI_OUT_OF_RESOURCES ;
 TYPE_1__* NextMemoryDescriptor (TYPE_1__*,int) ;
 TYPE_6__* RS ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int stub1 (int,int,int ,TYPE_1__*) ;

__attribute__((used)) static EFI_STATUS
efi_do_vmap(EFI_MEMORY_DESCRIPTOR *mm, UINTN sz, UINTN mmsz, UINT32 mmver)
{
 EFI_MEMORY_DESCRIPTOR *desc, *viter, *vmap;
 EFI_STATUS ret;
 int curr, ndesc, nset;

 nset = 0;
 desc = mm;
 ndesc = sz / mmsz;
 vmap = malloc(sz);
 if (vmap == ((void*)0))

  return (EFI_OUT_OF_RESOURCES);
 viter = vmap;
 for (curr = 0; curr < ndesc;
     curr++, desc = NextMemoryDescriptor(desc, mmsz)) {
  if ((desc->Attribute & EFI_MEMORY_RUNTIME) != 0) {
   ++nset;
   desc->VirtualStart = desc->PhysicalStart;
   *viter = *desc;
   viter = NextMemoryDescriptor(viter, mmsz);
  }
 }
 ret = RS->SetVirtualAddressMap(nset * mmsz, mmsz, mmver, vmap);
 free(vmap);
 return (ret);
}
