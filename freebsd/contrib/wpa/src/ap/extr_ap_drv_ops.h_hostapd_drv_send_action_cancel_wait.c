
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* send_action_cancel_wait ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static inline void
hostapd_drv_send_action_cancel_wait(struct hostapd_data *hapd)
{
 if (!hapd->driver || !hapd->driver->send_action_cancel_wait ||
     !hapd->drv_priv)
  return;
 hapd->driver->send_action_cancel_wait(hapd->drv_priv);
}
