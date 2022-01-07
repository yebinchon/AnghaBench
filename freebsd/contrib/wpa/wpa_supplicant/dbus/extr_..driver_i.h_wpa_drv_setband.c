
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
typedef enum set_band { ____Placeholder_set_band } set_band ;
struct TYPE_2__ {int (* set_band ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static inline int wpa_drv_setband(struct wpa_supplicant *wpa_s,
      enum set_band band)
{
 if (!wpa_s->driver->set_band)
  return -1;
 return wpa_s->driver->set_band(wpa_s->drv_priv, band);
}
