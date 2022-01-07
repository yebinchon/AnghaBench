
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_channel_info {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* channel_info ) (int ,struct wpa_channel_info*) ;} ;


 int stub1 (int ,struct wpa_channel_info*) ;

__attribute__((used)) static inline int hostapd_drv_channel_info(struct hostapd_data *hapd,
        struct wpa_channel_info *ci)
{
 if (!hapd->driver || !hapd->driver->channel_info)
  return -1;
 return hapd->driver->channel_info(hapd->drv_priv, ci);
}
