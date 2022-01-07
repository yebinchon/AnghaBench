
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_data {TYPE_2__* wps; int msg_ctx; TYPE_1__* conf; scalar_t__ ap_pin_failures_consecutive; scalar_t__ ap_pin_failures; } ;
struct TYPE_4__ {int registrar; scalar_t__ ap_setup_locked; } ;
struct TYPE_3__ {scalar_t__ ap_setup_locked; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPS_EVENT_AP_SETUP_UNLOCKED ;
 int eloop_cancel_timeout (int ,struct hostapd_data*,int *) ;
 int eloop_register_timeout (int,int ,int ,struct hostapd_data*,int *) ;
 int hostapd_wps_ap_pin_timeout ;
 int wpa_msg (int ,int ,int ) ;
 int wpa_printf (int ,char*,int) ;
 int wps_registrar_update_ie (int ) ;

__attribute__((used)) static void hostapd_wps_ap_pin_enable(struct hostapd_data *hapd, int timeout)
{
 wpa_printf(MSG_DEBUG, "WPS: Enabling AP PIN (timeout=%d)", timeout);
 hapd->ap_pin_failures = 0;
 hapd->ap_pin_failures_consecutive = 0;
 hapd->conf->ap_setup_locked = 0;
 if (hapd->wps->ap_setup_locked) {
  wpa_msg(hapd->msg_ctx, MSG_INFO, WPS_EVENT_AP_SETUP_UNLOCKED);
  hapd->wps->ap_setup_locked = 0;
  wps_registrar_update_ie(hapd->wps->registrar);
 }
 eloop_cancel_timeout(hostapd_wps_ap_pin_timeout, hapd, ((void*)0));
 if (timeout > 0)
  eloop_register_timeout(timeout, 0,
           hostapd_wps_ap_pin_timeout, hapd, ((void*)0));
}
