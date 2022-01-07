
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int pending_bssid; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int SME_AUTH_TIMEOUT ;
 int WPA_AUTHENTICATING ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int eloop_register_timeout (int ,int ,int ,struct wpa_supplicant*,int *) ;
 int os_memcpy (int ,int const*,int ) ;
 int sme_auth_timer ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_set_state (struct wpa_supplicant*,int ) ;

void sme_disassoc_while_authenticating(struct wpa_supplicant *wpa_s,
           const u8 *prev_pending_bssid)
{





 wpa_dbg(wpa_s, MSG_DEBUG, "SME: Allow pending authentication "
  "to proceed after disconnection event");
 wpa_supplicant_set_state(wpa_s, WPA_AUTHENTICATING);
 os_memcpy(wpa_s->pending_bssid, prev_pending_bssid, ETH_ALEN);




 eloop_cancel_timeout(sme_auth_timer, wpa_s, ((void*)0));
 eloop_register_timeout(SME_AUTH_TIMEOUT, 0, sme_auth_timer, wpa_s,
          ((void*)0));
}
