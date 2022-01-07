
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sta_info {int flags; scalar_t__ auth_alg; TYPE_3__* eapol_sm; int addr; int wpa_sm; } ;
struct rsn_pmksa_cache_entry {int dummy; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_8__ {void* reAuthenticate; scalar_t__ eap; void* authFail; void* authSuccess; void* be_auth_state; void* auth_pae_state; TYPE_2__* eap_if; void* keyRun; void* portValid; int flags; } ;
struct TYPE_7__ {void* eapKeyAvailable; void* portEnabled; } ;
struct TYPE_6__ {scalar_t__ wps_state; int ieee802_1x; int osen; scalar_t__ wpa; } ;


 void* AUTH_PAE_AUTHENTICATING ;
 void* BE_AUTH_SUCCESS ;
 int EAPOL_SM_WAIT_START ;
 void* FALSE ;
 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_LEVEL_INFO ;
 int HOSTAPD_MODULE_IEEE8021X ;
 int MSG_DEBUG ;
 void* TRUE ;
 scalar_t__ WLAN_AUTH_FILS_PK ;
 scalar_t__ WLAN_AUTH_FILS_SK ;
 scalar_t__ WLAN_AUTH_FILS_SK_PFS ;
 scalar_t__ WLAN_AUTH_FT ;
 int WLAN_STA_MAYBE_WPS ;
 int WLAN_STA_WPS ;
 int WLAN_STA_WPS2 ;
 int WPA_KEY_MGMT_DPP ;
 int WPA_KEY_MGMT_OWE ;
 int ap_sta_bind_vlan (struct hostapd_data*,struct sta_info*) ;
 int eap_sm_notify_cached (scalar_t__) ;
 int eapol_auth_step (TYPE_3__*) ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*) ;
 TYPE_3__* ieee802_1x_alloc_eapol_sm (struct hostapd_data*,struct sta_info*) ;
 int ieee802_1x_free_station (struct hostapd_data*,struct sta_info*) ;
 int pmksa_cache_to_eapol_data (struct hostapd_data*,struct rsn_pmksa_cache_entry*,TYPE_3__*) ;
 int wpa_auth_set_ptk_rekey_timer (int ) ;
 struct rsn_pmksa_cache_entry* wpa_auth_sta_get_pmksa (int ) ;
 int wpa_auth_sta_key_mgmt (int ) ;
 scalar_t__ wpa_key_mgmt_wpa_psk (int) ;
 int wpa_printf (int ,char*) ;

void ieee802_1x_new_station(struct hostapd_data *hapd, struct sta_info *sta)
{
 struct rsn_pmksa_cache_entry *pmksa;
 int reassoc = 1;
 int force_1x = 0;
 int key_mgmt;
 if (!force_1x && !hapd->conf->ieee802_1x && !hapd->conf->osen) {
  wpa_printf(MSG_DEBUG, "IEEE 802.1X: Ignore STA - "
      "802.1X not enabled or forced for WPS");




  ieee802_1x_free_station(hapd, sta);
  return;
 }

 key_mgmt = wpa_auth_sta_key_mgmt(sta->wpa_sm);
 if (key_mgmt != -1 &&
     (wpa_key_mgmt_wpa_psk(key_mgmt) || key_mgmt == WPA_KEY_MGMT_OWE ||
      key_mgmt == WPA_KEY_MGMT_DPP)) {
  wpa_printf(MSG_DEBUG, "IEEE 802.1X: Ignore STA - using PSK");




  ieee802_1x_free_station(hapd, sta);
  return;
 }

 if (sta->eapol_sm == ((void*)0)) {
  hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_IEEE8021X,
          HOSTAPD_LEVEL_DEBUG, "start authentication");
  sta->eapol_sm = ieee802_1x_alloc_eapol_sm(hapd, sta);
  if (sta->eapol_sm == ((void*)0)) {
   hostapd_logger(hapd, sta->addr,
           HOSTAPD_MODULE_IEEE8021X,
           HOSTAPD_LEVEL_INFO,
           "failed to allocate state machine");
   return;
  }
  reassoc = 0;
 }
 sta->eapol_sm->eap_if->portEnabled = TRUE;
 pmksa = wpa_auth_sta_get_pmksa(sta->wpa_sm);
 if (pmksa) {
  hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_IEEE8021X,
          HOSTAPD_LEVEL_DEBUG,
          "PMK from PMKSA cache - skip IEEE 802.1X/EAP");


  sta->eapol_sm->keyRun = TRUE;
  sta->eapol_sm->eap_if->eapKeyAvailable = TRUE;
  sta->eapol_sm->auth_pae_state = AUTH_PAE_AUTHENTICATING;
  sta->eapol_sm->be_auth_state = BE_AUTH_SUCCESS;
  sta->eapol_sm->authSuccess = TRUE;
  sta->eapol_sm->authFail = FALSE;
  if (sta->eapol_sm->eap)
   eap_sm_notify_cached(sta->eapol_sm->eap);
  pmksa_cache_to_eapol_data(hapd, pmksa, sta->eapol_sm);
  ap_sta_bind_vlan(hapd, sta);
 } else {
  if (reassoc) {





   sta->eapol_sm->reAuthenticate = TRUE;
  }
  eapol_auth_step(sta->eapol_sm);
 }
}
