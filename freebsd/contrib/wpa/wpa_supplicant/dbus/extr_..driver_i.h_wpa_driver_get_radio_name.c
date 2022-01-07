
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {char const* (* get_radio_name ) (int ) ;} ;


 char const* stub1 (int ) ;

__attribute__((used)) static inline const char *
wpa_driver_get_radio_name(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->driver->get_radio_name)
  return wpa_s->driver->get_radio_name(wpa_s->drv_priv);
 return ((void*)0);
}
