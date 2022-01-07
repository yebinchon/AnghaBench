
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netif_driver {int netif_nifs; char* netif_bname; TYPE_1__* netif_ifs; } ;
struct netif {int nif_unit; int nif_sel; struct netif_driver* nif_driver; } ;
struct TYPE_2__ {int dif_nsel; int dif_used; } ;


 scalar_t__ netif_debug ;
 struct netif_driver** netif_drivers ;
 int netif_match (struct netif*,void*) ;
 int printf (char*,...) ;

struct netif *
netif_select(void *machdep_hint)
{
 int d, u, unit_done, s;
 struct netif_driver *drv;
 struct netif cur_if;
 static struct netif best_if;
 int best_val;
 int val;

 best_val = 0;
 best_if.nif_driver = ((void*)0);

 for (d = 0; netif_drivers[d] != ((void*)0); d++) {
  cur_if.nif_driver = netif_drivers[d];
  drv = cur_if.nif_driver;

  for (u = 0; u < drv->netif_nifs; u++) {
   cur_if.nif_unit = u;
   unit_done = 0;







   for (s = 0; s < drv->netif_ifs[u].dif_nsel; s++) {
    cur_if.nif_sel = s;

    if (drv->netif_ifs[u].dif_used & (1 << s)) {




     continue;
    }

    val = netif_match(&cur_if, machdep_hint);




    if (val > best_val) {
     best_val = val;
     best_if = cur_if;
    }
   }




  }
 }

 if (best_if.nif_driver == ((void*)0))
  return ((void*)0);

 best_if.nif_driver->
     netif_ifs[best_if.nif_unit].dif_used |= (1 << best_if.nif_sel);







 return &best_if;
}
