
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* p2p_lo_stop ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static inline int wpa_drv_p2p_lo_stop(struct wpa_supplicant *wpa_s)
{
 if (!wpa_s->driver->p2p_lo_stop)
  return -1;
 return wpa_s->driver->p2p_lo_stop(wpa_s->drv_priv);
}
