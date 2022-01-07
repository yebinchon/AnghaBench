
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_country ) (int ,char const*) ;} ;


 int stub1 (int ,char const*) ;

__attribute__((used)) static inline int wpa_drv_set_country(struct wpa_supplicant *wpa_s,
          const char *alpha2)
{
 if (wpa_s->driver->set_country)
  return wpa_s->driver->set_country(wpa_s->drv_priv, alpha2);
 return 0;
}
