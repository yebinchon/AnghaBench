
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct wpa_channel_info {int dummy; } ;
struct TYPE_2__ {int (* channel_info ) (int ,struct wpa_channel_info*) ;} ;


 int stub1 (int ,struct wpa_channel_info*) ;

__attribute__((used)) static inline int wpa_drv_channel_info(struct wpa_supplicant *wpa_s,
           struct wpa_channel_info *ci)
{
 if (wpa_s->driver->channel_info)
  return wpa_s->driver->channel_info(wpa_s->drv_priv, ci);
 return -1;
}
