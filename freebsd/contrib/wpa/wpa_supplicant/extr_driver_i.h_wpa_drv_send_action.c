
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* send_action ) (int ,unsigned int,unsigned int,int const*,int const*,int const*,int const*,size_t,int) ;} ;


 int stub1 (int ,unsigned int,unsigned int,int const*,int const*,int const*,int const*,size_t,int) ;

__attribute__((used)) static inline int wpa_drv_send_action(struct wpa_supplicant *wpa_s,
          unsigned int freq,
          unsigned int wait,
          const u8 *dst, const u8 *src,
          const u8 *bssid,
          const u8 *data, size_t data_len,
          int no_cck)
{
 if (wpa_s->driver->send_action)
  return wpa_s->driver->send_action(wpa_s->drv_priv, freq,
        wait, dst, src, bssid,
        data, data_len, no_cck);
 return -1;
}
