
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINTN ;
struct TYPE_2__ {scalar_t__ (* LocateHandle ) (int ,int *,int *,int*,int *) ;} ;
typedef scalar_t__ EFI_STATUS ;
typedef int EFI_PCI_IO_PROTOCOL ;
typedef int EFI_HANDLE ;


 TYPE_1__* BS ;
 int ByProtocol ;
 scalar_t__ EFI_BUFFER_TOO_SMALL ;
 scalar_t__ EFI_SUCCESS ;
 scalar_t__ OpenProtocolByHandle (int ,int *,void**) ;
 int free (int *) ;
 int * malloc (int) ;
 int pciio_guid ;
 scalar_t__ stub1 (int ,int *,int *,int*,int *) ;
 scalar_t__ stub2 (int ,int *,int *,int*,int *) ;
 int uga_guid ;

__attribute__((used)) static EFI_PCI_IO_PROTOCOL *
efifb_uga_get_pciio(void)
{
 EFI_PCI_IO_PROTOCOL *pciio;
 EFI_HANDLE *buf, *hp;
 EFI_STATUS status;
 UINTN bufsz;


 bufsz = 0;
 status = BS->LocateHandle(ByProtocol, &uga_guid, ((void*)0), &bufsz, ((void*)0));
 if (status != EFI_BUFFER_TOO_SMALL)
  return (((void*)0));
 buf = malloc(bufsz);
 status = BS->LocateHandle(ByProtocol, &uga_guid, ((void*)0), &bufsz, buf);
 if (status != EFI_SUCCESS) {
  free(buf);
  return (((void*)0));
 }
 bufsz /= sizeof(EFI_HANDLE);


 pciio = ((void*)0);
 for (hp = buf; hp < buf + bufsz; hp++) {
  status = OpenProtocolByHandle(*hp, &pciio_guid,
      (void **)&pciio);
  if (status == EFI_SUCCESS) {
   free(buf);
   return (pciio);
  }
 }
 free(buf);
 return (((void*)0));
}
