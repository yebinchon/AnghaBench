
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif_driver {char* netif_bname; int (* netif_end ) (struct netif*) ;} ;
struct netif {int nif_unit; struct netif_driver* nif_driver; } ;


 scalar_t__ netif_debug ;
 int panic (char*,char*,int ) ;
 int printf (char*,char*,int ) ;
 int stub1 (struct netif*) ;

void
netif_detach(struct netif *nif)
{
 struct netif_driver *drv = nif->nif_driver;
 drv->netif_end(nif);
}
