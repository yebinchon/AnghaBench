
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_p2p_powersave ) (int ,int,int,int) ;} ;


 int stub1 (int ,int,int,int) ;

__attribute__((used)) static inline int wpa_drv_set_p2p_powersave(struct wpa_supplicant *wpa_s,
         int legacy_ps, int opp_ps,
         int ctwindow)
{
 if (!wpa_s->driver->set_p2p_powersave)
  return -1;
 return wpa_s->driver->set_p2p_powersave(wpa_s->drv_priv, legacy_ps,
      opp_ps, ctwindow);
}
