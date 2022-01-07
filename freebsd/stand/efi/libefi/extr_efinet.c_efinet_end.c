
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct netif {TYPE_1__* nif_devdata; } ;
struct TYPE_3__ {int (* Shutdown ) (TYPE_1__*) ;} ;
typedef TYPE_1__ EFI_SIMPLE_NETWORK ;


 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
efinet_end(struct netif *nif)
{
 EFI_SIMPLE_NETWORK *net = nif->nif_devdata;

 if (net == ((void*)0))
  return;

 net->Shutdown(net);
}
