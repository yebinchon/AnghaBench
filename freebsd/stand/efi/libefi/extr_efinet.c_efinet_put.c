
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct netif {TYPE_1__* nif_devdata; } ;
struct iodesc {struct netif* io_netif; } ;
typedef int ssize_t ;
struct TYPE_4__ {scalar_t__ (* Transmit ) (TYPE_1__*,int ,size_t,void*,int *,int *,int *) ;scalar_t__ (* GetStatus ) (TYPE_1__*,int *,void**) ;} ;
typedef scalar_t__ EFI_STATUS ;
typedef TYPE_1__ EFI_SIMPLE_NETWORK ;


 scalar_t__ EFI_SUCCESS ;
 scalar_t__ stub1 (TYPE_1__*,int ,size_t,void*,int *,int *,int *) ;
 scalar_t__ stub2 (TYPE_1__*,int *,void**) ;

__attribute__((used)) static ssize_t
efinet_put(struct iodesc *desc, void *pkt, size_t len)
{
 struct netif *nif = desc->io_netif;
 EFI_SIMPLE_NETWORK *net;
 EFI_STATUS status;
 void *buf;

 net = nif->nif_devdata;
 if (net == ((void*)0))
  return (-1);

 status = net->Transmit(net, 0, len, pkt, ((void*)0), ((void*)0), ((void*)0));
 if (status != EFI_SUCCESS)
  return (-1);


 do {
  buf = ((void*)0);
  status = net->GetStatus(net, ((void*)0), &buf);




 } while (status == EFI_SUCCESS && buf == ((void*)0));


 return ((status == EFI_SUCCESS) ? len : -1);
}
