
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct netif {size_t nif_unit; TYPE_2__* nif_driver; } ;
struct TYPE_6__ {scalar_t__ (* OpenProtocol ) (int ,int *,void**,int ,int *,int ) ;} ;
struct TYPE_5__ {TYPE_1__* netif_ifs; } ;
struct TYPE_4__ {int dif_private; } ;
typedef scalar_t__ EFI_STATUS ;
typedef int EFI_SIMPLE_NETWORK ;
typedef int EFI_HANDLE ;


 TYPE_3__* BS ;
 int EFI_ERROR_CODE (scalar_t__) ;
 int EFI_OPEN_PROTOCOL_EXCLUSIVE ;
 scalar_t__ EFI_SUCCESS ;
 int IH ;
 int efi_status_to_errno (scalar_t__) ;
 int printf (char*,size_t,int ) ;
 int sn_guid ;
 scalar_t__ stub1 (int ,int *,void**,int ,int *,int ) ;

__attribute__((used)) static int
efinet_probe(struct netif *nif, void *machdep_hint)
{
 EFI_SIMPLE_NETWORK *net;
 EFI_HANDLE h;
 EFI_STATUS status;

 h = nif->nif_driver->netif_ifs[nif->nif_unit].dif_private;





 status = BS->OpenProtocol(h, &sn_guid, (void **)&net,
     IH, ((void*)0), EFI_OPEN_PROTOCOL_EXCLUSIVE);
 if (status != EFI_SUCCESS) {
  printf("Unable to open network interface %d for "
      "exclusive access: %lu\n", nif->nif_unit,
      EFI_ERROR_CODE(status));
  return (efi_status_to_errno(status));
 }

 return (0);
}
