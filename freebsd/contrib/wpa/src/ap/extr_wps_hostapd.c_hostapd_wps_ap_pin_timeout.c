
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int msg_ctx; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPS_EVENT_AP_PIN_DISABLED ;
 int hostapd_wps_ap_pin_disable (struct hostapd_data*) ;
 int wpa_msg (int ,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void hostapd_wps_ap_pin_timeout(void *eloop_data, void *user_ctx)
{
 struct hostapd_data *hapd = eloop_data;
 wpa_printf(MSG_DEBUG, "WPS: AP PIN timed out");
 hostapd_wps_ap_pin_disable(hapd);
 wpa_msg(hapd->msg_ctx, MSG_INFO, WPS_EVENT_AP_PIN_DISABLED);
}
