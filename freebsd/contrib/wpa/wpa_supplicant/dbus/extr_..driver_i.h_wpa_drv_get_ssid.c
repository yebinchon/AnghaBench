
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* get_ssid ) (int ,int *) ;} ;


 int stub1 (int ,int *) ;

__attribute__((used)) static inline int wpa_drv_get_ssid(struct wpa_supplicant *wpa_s, u8 *ssid)
{
 if (wpa_s->driver->get_ssid) {
  return wpa_s->driver->get_ssid(wpa_s->drv_priv, ssid);
 }
 return -1;
}
