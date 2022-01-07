
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* sta_set_flags ) (int ,int const*,int,int,int) ;} ;


 int stub1 (int ,int const*,int,int,int) ;

__attribute__((used)) static inline int wpa_drv_sta_set_flags(struct wpa_supplicant *wpa_s,
     const u8 *addr, int total_flags,
     int flags_or, int flags_and)
{
 if (wpa_s->driver->sta_set_flags)
  return wpa_s->driver->sta_set_flags(wpa_s->drv_priv, addr,
          total_flags, flags_or,
          flags_and);
 return -1;
}
