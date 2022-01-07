
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct netif_driver {char* netif_bname; scalar_t__ (* netif_get ) (struct iodesc*,void**,int ) ;} ;
struct netif {int nif_unit; struct netif_driver* nif_driver; } ;
struct iodesc {struct netif* io_netif; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ netif_debug ;
 int panic (char*,char*,int) ;
 int printf (char*,char*,int,...) ;
 scalar_t__ stub1 (struct iodesc*,void**,int ) ;

ssize_t
netif_get(struct iodesc *desc, void **pkt, time_t timo)
{



 struct netif_driver *drv = desc->io_netif->nif_driver;
 ssize_t rv;
 rv = drv->netif_get(desc, pkt, timo);





 return (rv);
}
