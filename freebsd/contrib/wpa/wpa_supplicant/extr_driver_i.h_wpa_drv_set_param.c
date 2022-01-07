
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_param ) (int ,char const*) ;} ;


 int stub1 (int ,char const*) ;

__attribute__((used)) static inline int wpa_drv_set_param(struct wpa_supplicant *wpa_s,
        const char *param)
{
 if (wpa_s->driver->set_param)
  return wpa_s->driver->set_param(wpa_s->drv_priv, param);
 return 0;
}
