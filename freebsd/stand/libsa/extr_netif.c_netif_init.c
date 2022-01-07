
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netif_driver {int netif_nifs; TYPE_1__* netif_ifs; } ;
struct TYPE_2__ {scalar_t__ dif_used; } ;


 scalar_t__ netif_debug ;
 struct netif_driver** netif_drivers ;
 int printf (char*) ;

void
netif_init(void)
{
 struct netif_driver *drv;
 int d, i;





 for (d = 0; netif_drivers[d]; d++) {
  drv = netif_drivers[d];
  for (i = 0; i < drv->netif_nifs; i++)
   drv->netif_ifs[i].dif_used = 0;
 }
}
