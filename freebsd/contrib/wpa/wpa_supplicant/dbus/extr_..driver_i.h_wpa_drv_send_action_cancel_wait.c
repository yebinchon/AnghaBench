
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* send_action_cancel_wait ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static inline void wpa_drv_send_action_cancel_wait(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->driver->send_action_cancel_wait)
  wpa_s->driver->send_action_cancel_wait(wpa_s->drv_priv);
}
