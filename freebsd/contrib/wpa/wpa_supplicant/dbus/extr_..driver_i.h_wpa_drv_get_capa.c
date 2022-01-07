
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct wpa_driver_capa {int dummy; } ;
struct TYPE_2__ {int (* get_capa ) (int ,struct wpa_driver_capa*) ;} ;


 int stub1 (int ,struct wpa_driver_capa*) ;

__attribute__((used)) static inline int wpa_drv_get_capa(struct wpa_supplicant *wpa_s,
       struct wpa_driver_capa *capa)
{
 if (wpa_s->driver->get_capa) {
  return wpa_s->driver->get_capa(wpa_s->drv_priv, capa);
 }
 return -1;
}
