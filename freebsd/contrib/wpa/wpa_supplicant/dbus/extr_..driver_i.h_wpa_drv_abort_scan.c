
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* abort_scan ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

__attribute__((used)) static inline int wpa_drv_abort_scan(struct wpa_supplicant *wpa_s,
         u64 scan_cookie)
{
 if (!wpa_s->driver->abort_scan)
  return -1;
 return wpa_s->driver->abort_scan(wpa_s->drv_priv, scan_cookie);
}
