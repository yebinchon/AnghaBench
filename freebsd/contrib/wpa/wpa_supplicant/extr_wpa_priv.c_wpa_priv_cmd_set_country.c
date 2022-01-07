
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_priv_interface {int * drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_country ) (int *,char*) ;} ;


 int stub1 (int *,char*) ;

__attribute__((used)) static void wpa_priv_cmd_set_country(struct wpa_priv_interface *iface,
         char *buf)
{
 if (iface->drv_priv == ((void*)0) || iface->driver->set_country == ((void*)0) ||
     *buf == '\0')
  return;

 iface->driver->set_country(iface->drv_priv, buf);
}
