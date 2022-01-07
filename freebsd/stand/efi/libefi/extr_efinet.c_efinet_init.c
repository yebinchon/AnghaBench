
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct netif {size_t nif_unit; TYPE_4__* nif_devdata; TYPE_2__* nif_driver; } ;
struct iodesc {int xid; int myea; struct netif* io_netif; } ;
typedef int UINT32 ;
struct TYPE_11__ {int Addr; } ;
struct TYPE_13__ {scalar_t__ State; TYPE_3__ CurrentAddress; } ;
struct TYPE_12__ {scalar_t__ (* Start ) (TYPE_4__*) ;scalar_t__ (* Initialize ) (TYPE_4__*,int ,int ) ;scalar_t__ (* ReceiveFilters ) (TYPE_4__*,int,int ,int ,int ,int *) ;TYPE_8__* Mode; } ;
struct TYPE_10__ {TYPE_1__* netif_ifs; } ;
struct TYPE_9__ {scalar_t__ dif_unit; int dif_private; } ;
typedef scalar_t__ EFI_STATUS ;
typedef TYPE_4__ EFI_SIMPLE_NETWORK ;
typedef int EFI_HANDLE ;


 int EFI_ERROR_CODE (scalar_t__) ;
 int EFI_SIMPLE_NETWORK_RECEIVE_BROADCAST ;
 int EFI_SIMPLE_NETWORK_RECEIVE_UNICAST ;
 scalar_t__ EFI_SUCCESS ;
 scalar_t__ EfiSimpleNetworkInitialized ;
 scalar_t__ EfiSimpleNetworkStopped ;
 int FALSE ;
 scalar_t__ OpenProtocolByHandle (int ,int *,void**) ;
 int bcopy (int ,int ,int) ;
 int dump_mode (TYPE_8__*) ;
 int efi_env_net_params (struct iodesc*) ;
 int printf (char*,size_t,...) ;
 int sn_guid ;
 scalar_t__ stub1 (TYPE_4__*) ;
 scalar_t__ stub2 (TYPE_4__*,int ,int ) ;
 scalar_t__ stub3 (TYPE_4__*,int,int ,int ,int ,int *) ;

__attribute__((used)) static void
efinet_init(struct iodesc *desc, void *machdep_hint)
{
 struct netif *nif = desc->io_netif;
 EFI_SIMPLE_NETWORK *net;
 EFI_HANDLE h;
 EFI_STATUS status;
 UINT32 mask;


 efi_env_net_params(desc);

 if (nif->nif_driver->netif_ifs[nif->nif_unit].dif_unit < 0) {
  printf("Invalid network interface %d\n", nif->nif_unit);
  return;
 }

 h = nif->nif_driver->netif_ifs[nif->nif_unit].dif_private;
 status = OpenProtocolByHandle(h, &sn_guid, (void **)&nif->nif_devdata);
 if (status != EFI_SUCCESS) {
  printf("net%d: cannot fetch interface data (status=%lu)\n",
      nif->nif_unit, EFI_ERROR_CODE(status));
  return;
 }

 net = nif->nif_devdata;
 if (net->Mode->State == EfiSimpleNetworkStopped) {
  status = net->Start(net);
  if (status != EFI_SUCCESS) {
   printf("net%d: cannot start interface (status=%lu)\n",
       nif->nif_unit, EFI_ERROR_CODE(status));
   return;
  }
 }

 if (net->Mode->State != EfiSimpleNetworkInitialized) {
  status = net->Initialize(net, 0, 0);
  if (status != EFI_SUCCESS) {
   printf("net%d: cannot init. interface (status=%lu)\n",
       nif->nif_unit, EFI_ERROR_CODE(status));
   return;
  }
 }

 mask = EFI_SIMPLE_NETWORK_RECEIVE_UNICAST |
     EFI_SIMPLE_NETWORK_RECEIVE_BROADCAST;

 status = net->ReceiveFilters(net, mask, 0, FALSE, 0, ((void*)0));
 if (status != EFI_SUCCESS)
  printf("net%d: cannot set rx. filters (status=%lu)\n",
      nif->nif_unit, EFI_ERROR_CODE(status));





 bcopy(net->Mode->CurrentAddress.Addr, desc->myea, 6);
 desc->xid = 1;
}
