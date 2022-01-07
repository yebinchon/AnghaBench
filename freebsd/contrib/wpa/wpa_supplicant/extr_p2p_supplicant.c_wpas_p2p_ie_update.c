
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* ap_iface; } ;
struct hostapd_data {struct wpabuf* p2p_probe_resp_ie; struct wpabuf* p2p_beacon_ie; TYPE_2__* conf; } ;
struct TYPE_4__ {int p2p; } ;
struct TYPE_3__ {struct hostapd_data** bss; } ;


 int P2P_GROUP_OWNER ;
 int wpa_supplicant_ap_update_beacon (struct wpa_supplicant*) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static void wpas_p2p_ie_update(void *ctx, struct wpabuf *beacon_ies,
          struct wpabuf *proberesp_ies)
{
 struct wpa_supplicant *wpa_s = ctx;
 if (wpa_s->ap_iface) {
  struct hostapd_data *hapd = wpa_s->ap_iface->bss[0];
  if (!(hapd->conf->p2p & P2P_GROUP_OWNER)) {
   wpabuf_free(beacon_ies);
   wpabuf_free(proberesp_ies);
   return;
  }
  if (beacon_ies) {
   wpabuf_free(hapd->p2p_beacon_ie);
   hapd->p2p_beacon_ie = beacon_ies;
  }
  wpabuf_free(hapd->p2p_probe_resp_ie);
  hapd->p2p_probe_resp_ie = proberesp_ies;
 } else {
  wpabuf_free(beacon_ies);
  wpabuf_free(proberesp_ies);
 }
 wpa_supplicant_ap_update_beacon(wpa_s);
}
