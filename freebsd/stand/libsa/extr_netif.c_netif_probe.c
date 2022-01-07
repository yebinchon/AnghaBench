
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif_driver {char* netif_bname; int (* netif_probe ) (struct netif*,void*) ;} ;
struct netif {int nif_unit; struct netif_driver* nif_driver; } ;


 scalar_t__ netif_debug ;
 int printf (char*,char*,int ) ;
 int stub1 (struct netif*,void*) ;

int
netif_probe(struct netif *nif, void *machdep_hint)
{
 struct netif_driver *drv = nif->nif_driver;





 return drv->netif_probe(nif, machdep_hint);
}
