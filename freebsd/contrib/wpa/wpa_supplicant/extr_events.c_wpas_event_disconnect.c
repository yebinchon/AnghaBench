
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct wpa_supplicant {int key_mgmt; int eap_expected_failure; int eapol; scalar_t__ own_disconnect_req; TYPE_1__* ap_iface; } ;
struct TYPE_2__ {int * bss; } ;


 int MSG_DEBUG ;
 scalar_t__ WLAN_REASON_IEEE_802_1X_AUTH_FAILED ;
 int WPA_KEY_MGMT_IEEE8021X_NO_WPA ;
 scalar_t__ eapol_sm_failed (int ) ;
 int hostapd_notif_disassoc (int ,int const*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 scalar_t__ wpa_key_mgmt_wpa_ieee8021x (int) ;
 int wpa_supplicant_event_disassoc (struct wpa_supplicant*,scalar_t__,int) ;
 int wpa_supplicant_event_disassoc_finish (struct wpa_supplicant*,scalar_t__,int) ;
 int wpas_auth_failed (struct wpa_supplicant*,char*) ;
 scalar_t__ wpas_p2p_deauth_notif (struct wpa_supplicant*,int const*,scalar_t__,int const*,size_t,int) ;

__attribute__((used)) static void wpas_event_disconnect(struct wpa_supplicant *wpa_s, const u8 *addr,
      u16 reason_code, int locally_generated,
      const u8 *ie, size_t ie_len, int deauth)
{
 if (!locally_generated)
  wpa_s->own_disconnect_req = 0;

 wpa_supplicant_event_disassoc(wpa_s, reason_code, locally_generated);

 if (((reason_code == WLAN_REASON_IEEE_802_1X_AUTH_FAILED ||
       ((wpa_key_mgmt_wpa_ieee8021x(wpa_s->key_mgmt) ||
  (wpa_s->key_mgmt & WPA_KEY_MGMT_IEEE8021X_NO_WPA)) &&
        eapol_sm_failed(wpa_s->eapol))) &&
      !wpa_s->eap_expected_failure))
  wpas_auth_failed(wpa_s, "AUTH_FAILED");
 wpa_supplicant_event_disassoc_finish(wpa_s, reason_code,
          locally_generated);
}
