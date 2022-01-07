
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_data {int ap_pin_failures_consecutive; TYPE_2__* wps; int msg_ctx; TYPE_1__* conf; } ;
struct TYPE_4__ {int registrar; scalar_t__ ap_setup_locked; } ;
struct TYPE_3__ {scalar_t__ ap_setup_locked; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPS_EVENT_AP_SETUP_UNLOCKED ;
 int wpa_msg (int ,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wps_registrar_update_ie (int ) ;

__attribute__((used)) static void hostapd_wps_reenable_ap_pin(void *eloop_data, void *user_ctx)
{
 struct hostapd_data *hapd = eloop_data;

 if (hapd->conf->ap_setup_locked)
  return;
 if (hapd->ap_pin_failures_consecutive >= 10)
  return;

 wpa_printf(MSG_DEBUG, "WPS: Re-enable AP PIN");
 wpa_msg(hapd->msg_ctx, MSG_INFO, WPS_EVENT_AP_SETUP_UNLOCKED);
 hapd->wps->ap_setup_locked = 0;
 wps_registrar_update_ie(hapd->wps->registrar);
}
