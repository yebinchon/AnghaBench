
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct wpa_driver_ap_params {int dummy; } ;
struct TYPE_2__ {int (* set_ap ) (int ,struct wpa_driver_ap_params*) ;} ;


 int stub1 (int ,struct wpa_driver_ap_params*) ;

__attribute__((used)) static inline int wpa_drv_set_ap(struct wpa_supplicant *wpa_s,
     struct wpa_driver_ap_params *params)
{
 if (wpa_s->driver->set_ap)
  return wpa_s->driver->set_ap(wpa_s->drv_priv, params);
 return -1;
}
