
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {scalar_t__ conf; TYPE_1__* iface; scalar_t__ drv_priv; } ;
struct TYPE_2__ {int driver_ap_teardown; } ;


 int hostapd_broadcast_wep_clear (struct hostapd_data*) ;
 int hostapd_set_privacy (struct hostapd_data*,int ) ;

__attribute__((used)) static void hostapd_clear_wep(struct hostapd_data *hapd)
{
 if (hapd->drv_priv && !hapd->iface->driver_ap_teardown && hapd->conf) {
  hostapd_set_privacy(hapd, 0);
  hostapd_broadcast_wep_clear(hapd);
 }
}
