
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int flags; int radius_cui; int identity; int p2p_ie; int wps_ie; int addr; scalar_t__ wpa_sm; } ;
struct hostapd_data {int eapol_auth; } ;
struct eapol_state_machine {int dummy; } ;


 int EAPOL_SM_FROM_PMKSA_CACHE ;
 int EAPOL_SM_PREAUTH ;
 int EAPOL_SM_USES_WPA ;
 int WLAN_STA_PREAUTH ;
 struct eapol_state_machine* eapol_auth_alloc (int ,int ,int,int ,int ,struct sta_info*,int ,int ) ;
 scalar_t__ wpa_auth_sta_get_pmksa (scalar_t__) ;

struct eapol_state_machine *
ieee802_1x_alloc_eapol_sm(struct hostapd_data *hapd, struct sta_info *sta)
{
 int flags = 0;
 if (sta->flags & WLAN_STA_PREAUTH)
  flags |= EAPOL_SM_PREAUTH;
 if (sta->wpa_sm) {
  flags |= EAPOL_SM_USES_WPA;
  if (wpa_auth_sta_get_pmksa(sta->wpa_sm))
   flags |= EAPOL_SM_FROM_PMKSA_CACHE;
 }
 return eapol_auth_alloc(hapd->eapol_auth, sta->addr, flags,
    sta->wps_ie, sta->p2p_ie, sta,
    sta->identity, sta->radius_cui);
}
