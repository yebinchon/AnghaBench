
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int ap_sta_delayed_1x_auth_fail_cb ;
 int eloop_is_timeout_registered (int ,struct hostapd_data*,struct sta_info*) ;

int ap_sta_pending_delayed_1x_auth_fail_disconnect(struct hostapd_data *hapd,
         struct sta_info *sta)
{
 return eloop_is_timeout_registered(ap_sta_delayed_1x_auth_fail_cb,
        hapd, sta);
}
