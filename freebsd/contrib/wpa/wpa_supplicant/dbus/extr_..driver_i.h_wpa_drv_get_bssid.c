
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* get_bssid ) (int ,int *) ;} ;


 int stub1 (int ,int *) ;

__attribute__((used)) static inline int wpa_drv_get_bssid(struct wpa_supplicant *wpa_s, u8 *bssid)
{
 if (wpa_s->driver->get_bssid) {
  return wpa_s->driver->get_bssid(wpa_s->drv_priv, bssid);
 }
 return -1;
}
