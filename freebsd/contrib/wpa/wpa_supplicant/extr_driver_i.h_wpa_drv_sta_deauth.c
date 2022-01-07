
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wpa_supplicant {int own_addr; int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* sta_deauth ) (int ,int ,int const*,int ) ;} ;


 int stub1 (int ,int ,int const*,int ) ;

__attribute__((used)) static inline int wpa_drv_sta_deauth(struct wpa_supplicant *wpa_s,
         const u8 *addr, u16 reason_code)
{
 if (wpa_s->driver->sta_deauth) {
  return wpa_s->driver->sta_deauth(wpa_s->drv_priv,
       wpa_s->own_addr, addr,
       reason_code);
 }
 return -1;
}
