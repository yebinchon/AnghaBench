
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wps_event_pwd_auth_fail {int enrollee; } ;
struct hostapd_data {int ap_pin_failures; int ap_pin_failures_consecutive; int ap_pin_lockout_time; TYPE_2__* conf; TYPE_1__* wps; int msg_ctx; } ;
struct TYPE_4__ {int ap_setup_locked; int * ap_pin; } ;
struct TYPE_3__ {int ap_setup_locked; int registrar; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPS_EVENT_AP_SETUP_LOCKED ;
 int eloop_cancel_timeout (int ,struct hostapd_data*,int *) ;
 int eloop_register_timeout (int,int ,int ,struct hostapd_data*,int *) ;
 int hostapd_wps_reenable_ap_pin ;
 int wpa_msg (int ,int ,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wps_registrar_update_ie (int ) ;

__attribute__((used)) static int wps_pwd_auth_fail(struct hostapd_data *hapd, void *ctx)
{
 struct wps_event_pwd_auth_fail *data = ctx;

 if (!data->enrollee || hapd->conf->ap_pin == ((void*)0) || hapd->wps == ((void*)0))
  return 0;






 hapd->ap_pin_failures++;
 hapd->ap_pin_failures_consecutive++;
 wpa_printf(MSG_DEBUG, "WPS: AP PIN authentication failure number %u "
     "(%u consecutive)",
     hapd->ap_pin_failures, hapd->ap_pin_failures_consecutive);
 if (hapd->ap_pin_failures < 3)
  return 0;

 wpa_msg(hapd->msg_ctx, MSG_INFO, WPS_EVENT_AP_SETUP_LOCKED);
 hapd->wps->ap_setup_locked = 1;

 wps_registrar_update_ie(hapd->wps->registrar);

 if (!hapd->conf->ap_setup_locked &&
     hapd->ap_pin_failures_consecutive >= 10) {




  eloop_cancel_timeout(hostapd_wps_reenable_ap_pin, hapd, ((void*)0));
  wpa_printf(MSG_DEBUG, "WPS: AP PIN disabled indefinitely");
 } else if (!hapd->conf->ap_setup_locked) {
  if (hapd->ap_pin_lockout_time == 0)
   hapd->ap_pin_lockout_time = 60;
  else if (hapd->ap_pin_lockout_time < 365 * 24 * 60 * 60 &&
    (hapd->ap_pin_failures % 3) == 0)
   hapd->ap_pin_lockout_time *= 2;

  wpa_printf(MSG_DEBUG, "WPS: Disable AP PIN for %u seconds",
      hapd->ap_pin_lockout_time);
  eloop_cancel_timeout(hostapd_wps_reenable_ap_pin, hapd, ((void*)0));
  eloop_register_timeout(hapd->ap_pin_lockout_time, 0,
           hostapd_wps_reenable_ap_pin, hapd,
           ((void*)0));
 }

 return 0;
}
