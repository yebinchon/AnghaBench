
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* tdls_disable_channel_switch ) (int ,int const*) ;} ;


 int stub1 (int ,int const*) ;

__attribute__((used)) static inline int
wpa_drv_tdls_disable_channel_switch(struct wpa_supplicant *wpa_s,
        const u8 *addr)
{
 if (!wpa_s->driver->tdls_disable_channel_switch)
  return -1;
 return wpa_s->driver->tdls_disable_channel_switch(wpa_s->drv_priv,
         addr);
}
