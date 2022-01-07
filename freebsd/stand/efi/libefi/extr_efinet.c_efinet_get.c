
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct netif {TYPE_2__* nif_devdata; } ;
struct iodesc {struct netif* io_netif; } ;
typedef int ssize_t ;
typedef int UINTN ;
struct TYPE_5__ {scalar_t__ (* Receive ) (TYPE_2__*,int *,int*,char*,int *,int *,int *) ;TYPE_1__* Mode; } ;
struct TYPE_4__ {int MaxPacketSize; } ;
typedef scalar_t__ EFI_STATUS ;
typedef TYPE_2__ EFI_SIMPLE_NETWORK ;


 scalar_t__ EFI_NOT_READY ;
 scalar_t__ EFI_SUCCESS ;
 int ETHER_ALIGN ;
 int ETHER_CRC_LEN ;
 int ETHER_HDR_LEN ;
 int free (char*) ;
 scalar_t__ getsecs () ;
 char* malloc (int) ;
 scalar_t__ stub1 (TYPE_2__*,int *,int*,char*,int *,int *,int *) ;

__attribute__((used)) static ssize_t
efinet_get(struct iodesc *desc, void **pkt, time_t timeout)
{
 struct netif *nif = desc->io_netif;
 EFI_SIMPLE_NETWORK *net;
 EFI_STATUS status;
 UINTN bufsz;
 time_t t;
 char *buf, *ptr;
 ssize_t ret = -1;

 net = nif->nif_devdata;
 if (net == ((void*)0))
  return (ret);

 bufsz = net->Mode->MaxPacketSize + ETHER_HDR_LEN + ETHER_CRC_LEN;
 buf = malloc(bufsz + ETHER_ALIGN);
 if (buf == ((void*)0))
  return (ret);
 ptr = buf + ETHER_ALIGN;

 t = getsecs();
 while ((getsecs() - t) < timeout) {
  status = net->Receive(net, ((void*)0), &bufsz, ptr, ((void*)0), ((void*)0), ((void*)0));
  if (status == EFI_SUCCESS) {
   *pkt = buf;
   ret = (ssize_t)bufsz;
   break;
  }
  if (status != EFI_NOT_READY)
   break;
 }

 if (ret == -1)
  free(buf);
 return (ret);
}
