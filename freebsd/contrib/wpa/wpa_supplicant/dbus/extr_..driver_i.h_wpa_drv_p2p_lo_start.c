
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* p2p_lo_start ) (int ,unsigned int,unsigned int,unsigned int,unsigned int,int const*,size_t,int const*,size_t) ;} ;


 int stub1 (int ,unsigned int,unsigned int,unsigned int,unsigned int,int const*,size_t,int const*,size_t) ;

__attribute__((used)) static inline int wpa_drv_p2p_lo_start(struct wpa_supplicant *wpa_s,
           unsigned int channel,
           unsigned int period,
           unsigned int interval,
           unsigned int count,
           const u8 *device_types,
           size_t dev_types_len,
           const u8 *ies, size_t ies_len)
{
 if (!wpa_s->driver->p2p_lo_start)
  return -1;
 return wpa_s->driver->p2p_lo_start(wpa_s->drv_priv, channel, period,
        interval, count, device_types,
        dev_types_len, ies, ies_len);
}
