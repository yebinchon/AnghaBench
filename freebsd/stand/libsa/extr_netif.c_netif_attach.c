
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netif_stats {int dummy; } ;
struct netif_driver {char* netif_bname; TYPE_1__* netif_ifs; int (* netif_init ) (struct iodesc*,void*) ;} ;
struct netif {size_t nif_unit; struct netif_driver* nif_driver; } ;
struct iodesc {struct netif* io_netif; } ;
struct TYPE_2__ {int dif_stats; } ;


 int bzero (int ,int) ;
 scalar_t__ netif_debug ;
 int panic (char*,char*,size_t) ;
 int printf (char*,char*,size_t) ;
 int stub1 (struct iodesc*,void*) ;

void
netif_attach(struct netif *nif, struct iodesc *desc, void *machdep_hint)
{
 struct netif_driver *drv = nif->nif_driver;





 desc->io_netif = nif;





 drv->netif_init(desc, machdep_hint);
 bzero(drv->netif_ifs[nif->nif_unit].dif_stats,
     sizeof(struct netif_stats));
}
