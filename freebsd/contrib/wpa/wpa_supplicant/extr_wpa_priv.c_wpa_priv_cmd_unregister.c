
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_priv_interface {scalar_t__ wpas_registered; int * drv_global_priv; TYPE_1__* driver; int * drv_priv; } ;
struct sockaddr_un {int dummy; } ;
struct TYPE_2__ {int (* global_deinit ) (int *) ;int (* deinit ) (int *) ;} ;


 int stub1 (int *) ;
 int stub2 (int *) ;

__attribute__((used)) static void wpa_priv_cmd_unregister(struct wpa_priv_interface *iface,
        struct sockaddr_un *from)
{
 if (iface->drv_priv) {
  if (iface->driver->deinit)
   iface->driver->deinit(iface->drv_priv);
  iface->drv_priv = ((void*)0);
  if (iface->drv_global_priv) {
   iface->driver->global_deinit(iface->drv_global_priv);
   iface->drv_global_priv = ((void*)0);
  }
  iface->wpas_registered = 0;
 }
}
