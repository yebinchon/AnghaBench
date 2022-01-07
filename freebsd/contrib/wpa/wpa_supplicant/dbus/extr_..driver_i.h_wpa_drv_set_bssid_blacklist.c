
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_bssid_blacklist ) (int ,unsigned int,int const*) ;} ;


 int stub1 (int ,unsigned int,int const*) ;

__attribute__((used)) static inline int wpa_drv_set_bssid_blacklist(struct wpa_supplicant *wpa_s,
           unsigned int num_bssid,
           const u8 *bssids)
{
 if (!wpa_s->driver->set_bssid_blacklist)
  return -1;
 return wpa_s->driver->set_bssid_blacklist(wpa_s->drv_priv, num_bssid,
        bssids);
}
