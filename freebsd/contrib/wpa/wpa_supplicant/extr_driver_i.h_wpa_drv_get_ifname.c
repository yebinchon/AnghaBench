
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {char const* (* get_ifname ) (int ) ;} ;


 char const* stub1 (int ) ;

__attribute__((used)) static inline const char * wpa_drv_get_ifname(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->driver->get_ifname) {
  return wpa_s->driver->get_ifname(wpa_s->drv_priv);
 }
 return ((void*)0);
}
