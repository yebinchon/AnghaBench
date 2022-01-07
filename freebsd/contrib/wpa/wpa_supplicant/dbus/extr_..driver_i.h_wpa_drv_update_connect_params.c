
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct wpa_driver_associate_params {int dummy; } ;
typedef enum wpa_drv_update_connect_params_mask { ____Placeholder_wpa_drv_update_connect_params_mask } wpa_drv_update_connect_params_mask ;
struct TYPE_2__ {int (* update_connect_params ) (int ,struct wpa_driver_associate_params*,int) ;} ;


 int stub1 (int ,struct wpa_driver_associate_params*,int) ;

__attribute__((used)) static inline int wpa_drv_update_connect_params(
 struct wpa_supplicant *wpa_s,
 struct wpa_driver_associate_params *params,
 enum wpa_drv_update_connect_params_mask mask)
{
 if (!wpa_s->driver->update_connect_params)
  return -1;
 return wpa_s->driver->update_connect_params(wpa_s->drv_priv, params,
          mask);
}
