
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int u_int ;
struct TYPE_6__ {int (* FreePool ) (int*) ;} ;
struct TYPE_5__ {scalar_t__ (* GetBarAttributes ) (TYPE_1__*,int,int *,void**) ;} ;
typedef scalar_t__ EFI_STATUS ;
typedef TYPE_1__ EFI_PCI_IO_PROTOCOL ;


 TYPE_4__* BS ;
 scalar_t__ EFI_DEVICE_ERROR ;
 scalar_t__ EFI_SUCCESS ;
 scalar_t__ le32dec (int*) ;
 scalar_t__ le64dec (int*) ;
 scalar_t__ stub1 (TYPE_1__*,int,int *,void**) ;
 int stub2 (int*) ;

__attribute__((used)) static EFI_STATUS
efifb_uga_locate_framebuffer(EFI_PCI_IO_PROTOCOL *pciio, uint64_t *addrp,
    uint64_t *sizep)
{
 uint8_t *resattr;
 uint64_t addr, size;
 EFI_STATUS status;
 u_int bar;

 if (pciio == ((void*)0))
  return (EFI_DEVICE_ERROR);


 *addrp = 0;
 *sizep = 0;
 for (bar = 0; bar < 6; bar++) {
  status = pciio->GetBarAttributes(pciio, bar, ((void*)0),
      (void **)&resattr);
  if (status != EFI_SUCCESS)
   continue;

  if (resattr[0] == 0x87 && resattr[3] == 0) {

   addr = le32dec(resattr + 10);
   size = le32dec(resattr + 22);
  } else if (resattr[0] == 0x8a && resattr[3] == 0) {

   addr = le64dec(resattr + 14);
   size = le64dec(resattr + 38);
  } else {
   addr = 0;
   size = 0;
  }
  BS->FreePool(resattr);
  if (addr == 0 || size == 0)
   continue;


  if (size > *sizep) {
   *addrp = addr;
   *sizep = size;
  }
 }
 return ((*addrp == 0 || *sizep == 0) ? EFI_DEVICE_ERROR : 0);
}
