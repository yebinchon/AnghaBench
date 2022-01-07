
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct hostapd_freq_params {int dummy; } ;
struct TYPE_2__ {int (* set_freq ) (int ,struct hostapd_freq_params*) ;} ;


 int stub1 (int ,struct hostapd_freq_params*) ;

__attribute__((used)) static inline int wpa_drv_set_freq(struct wpa_supplicant *wpa_s,
       struct hostapd_freq_params *freq)
{
 if (wpa_s->driver->set_freq)
  return wpa_s->driver->set_freq(wpa_s->drv_priv, freq);
 return -1;
}
