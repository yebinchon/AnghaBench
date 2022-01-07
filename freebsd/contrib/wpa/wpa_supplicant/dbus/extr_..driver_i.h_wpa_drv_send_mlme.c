
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* send_mlme ) (int ,int const*,size_t,int,unsigned int,int *,int ) ;} ;


 int stub1 (int ,int const*,size_t,int,unsigned int,int *,int ) ;

__attribute__((used)) static inline int wpa_drv_send_mlme(struct wpa_supplicant *wpa_s,
        const u8 *data, size_t data_len, int noack,
        unsigned int freq)
{
 if (wpa_s->driver->send_mlme)
  return wpa_s->driver->send_mlme(wpa_s->drv_priv,
      data, data_len, noack,
      freq, ((void*)0), 0);
 return -1;
}
