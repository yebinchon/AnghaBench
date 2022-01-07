
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
typedef enum wpa_driver_if_type { ____Placeholder_wpa_driver_if_type } wpa_driver_if_type ;
struct TYPE_2__ {int (* if_remove ) (int ,int,char const*) ;} ;


 int stub1 (int ,int,char const*) ;

__attribute__((used)) static inline int wpa_drv_if_remove(struct wpa_supplicant *wpa_s,
        enum wpa_driver_if_type type,
        const char *ifname)
{
 if (wpa_s->driver->if_remove)
  return wpa_s->driver->if_remove(wpa_s->drv_priv, type, ifname);
 return -1;
}
