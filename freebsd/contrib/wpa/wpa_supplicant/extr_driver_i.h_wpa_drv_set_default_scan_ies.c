
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_default_scan_ies ) (int ,int const*,size_t) ;} ;


 int stub1 (int ,int const*,size_t) ;

__attribute__((used)) static inline int wpa_drv_set_default_scan_ies(struct wpa_supplicant *wpa_s,
            const u8 *ies, size_t len)
{
 if (!wpa_s->driver->set_default_scan_ies)
  return -1;
 return wpa_s->driver->set_default_scan_ies(wpa_s->drv_priv, ies, len);
}
