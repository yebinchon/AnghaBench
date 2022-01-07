
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct hostapd_sta_add_params {int dummy; } ;
struct TYPE_2__ {int (* sta_add ) (int ,struct hostapd_sta_add_params*) ;} ;


 int stub1 (int ,struct hostapd_sta_add_params*) ;

__attribute__((used)) static inline int wpa_drv_sta_add(struct wpa_supplicant *wpa_s,
      struct hostapd_sta_add_params *params)
{
 if (wpa_s->driver->sta_add)
  return wpa_s->driver->sta_add(wpa_s->drv_priv, params);
 return -1;
}
