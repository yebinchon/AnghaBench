
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int bssid; int drv_priv; TYPE_1__* driver; } ;
struct hostap_sta_driver_data {int dummy; } ;
struct TYPE_2__ {int (* read_sta_data ) (int ,struct hostap_sta_driver_data*,int ) ;} ;


 int stub1 (int ,struct hostap_sta_driver_data*,int ) ;

__attribute__((used)) static inline int wpa_drv_pktcnt_poll(struct wpa_supplicant *wpa_s,
          struct hostap_sta_driver_data *sta)
{
 if (wpa_s->driver->read_sta_data)
  return wpa_s->driver->read_sta_data(wpa_s->drv_priv, sta,
          wpa_s->bssid);
 return -1;
}
