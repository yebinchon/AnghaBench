
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {int ap_configured_cb_data; int ap_configured_cb_ctx; int (* ap_configured_cb ) (int ,int ) ;TYPE_2__* ap_iface; TYPE_1__* current_ssid; int assoc_freq; } ;
struct TYPE_4__ {scalar_t__ state; int freq; } ;
struct TYPE_3__ {int frequency; scalar_t__ acs; } ;


 scalar_t__ HAPD_IFACE_DISABLED ;
 int MSG_DEBUG ;
 int WPA_COMPLETED ;
 int hostapd_state_text (scalar_t__) ;
 int stub1 (int ,int ) ;
 int wpa_printf (int ,char*,int ) ;
 int wpa_supplicant_ap_deinit (struct wpa_supplicant*) ;
 int wpa_supplicant_set_state (struct wpa_supplicant*,int ) ;

__attribute__((used)) static void wpas_ap_configured_cb(void *ctx)
{
 struct wpa_supplicant *wpa_s = ctx;

 wpa_printf(MSG_DEBUG, "AP interface setup completed - state %s",
     hostapd_state_text(wpa_s->ap_iface->state));
 if (wpa_s->ap_iface->state == HAPD_IFACE_DISABLED) {
  wpa_supplicant_ap_deinit(wpa_s);
  return;
 }
 wpa_supplicant_set_state(wpa_s, WPA_COMPLETED);

 if (wpa_s->ap_configured_cb)
  wpa_s->ap_configured_cb(wpa_s->ap_configured_cb_ctx,
     wpa_s->ap_configured_cb_data);
}
