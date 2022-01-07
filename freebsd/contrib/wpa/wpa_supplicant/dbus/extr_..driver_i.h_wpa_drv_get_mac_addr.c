
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int const* (* get_mac_addr ) (int ) ;} ;


 int const* stub1 (int ) ;

__attribute__((used)) static inline const u8 * wpa_drv_get_mac_addr(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->driver->get_mac_addr) {
  return wpa_s->driver->get_mac_addr(wpa_s->drv_priv);
 }
 return ((void*)0);
}
