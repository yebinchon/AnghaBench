
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_prob_oper_freq ) (int ,unsigned int) ;} ;


 int stub1 (int ,unsigned int) ;

__attribute__((used)) static inline int wpa_drv_set_prob_oper_freq(struct wpa_supplicant *wpa_s,
          unsigned int freq)
{
 if (!wpa_s->driver->set_prob_oper_freq)
  return 0;
 return wpa_s->driver->set_prob_oper_freq(wpa_s->drv_priv, freq);
}
