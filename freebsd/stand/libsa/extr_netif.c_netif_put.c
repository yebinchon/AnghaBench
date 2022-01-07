
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif_driver {char* netif_bname; scalar_t__ (* netif_put ) (struct iodesc*,void*,size_t) ;} ;
struct netif {int nif_unit; struct netif_driver* nif_driver; } ;
struct iodesc {struct netif* io_netif; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ netif_debug ;
 int panic (char*,char*,int) ;
 int printf (char*,char*,int,...) ;
 scalar_t__ stub1 (struct iodesc*,void*,size_t) ;

ssize_t
netif_put(struct iodesc *desc, void *pkt, size_t len)
{



 struct netif_driver *drv = desc->io_netif->nif_driver;
 ssize_t rv;
 rv = drv->netif_put(desc, pkt, len);





 return (rv);
}
