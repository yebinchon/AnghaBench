
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const u8 ;
struct sta_info {scalar_t__ auth_alg; size_t owe_pmk_len; struct hostapd_sta_wpa_psk_short* psk; int wpa_sm; int const* owe_pmk; TYPE_1__* sae; } ;
struct rsn_pmksa_cache_entry {int akmp; size_t pmk_len; int const* pmk; } ;
struct hostapd_sta_wpa_psk_short {int const* psk; struct hostapd_sta_wpa_psk_short* next; scalar_t__ is_passphrase; int passphrase; } ;
struct hostapd_data {TYPE_3__* conf; } ;
struct TYPE_5__ {int ssid_len; int ssid; } ;
struct TYPE_6__ {int wpa_key_mgmt; TYPE_2__ ssid; } ;
struct TYPE_4__ {int const* pmk; } ;


 int MSG_DEBUG ;
 size_t PMK_LEN ;
 scalar_t__ WLAN_AUTH_SAE ;
 int WPA_KEY_MGMT_OWE ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int const*) ;
 int const* hostapd_get_psk (TYPE_3__*,int const*,int const*,int const*,int*) ;
 int pbkdf2_sha1 (int ,int ,int ,int,int const*,size_t) ;
 struct rsn_pmksa_cache_entry* wpa_auth_sta_get_pmksa (int ) ;
 scalar_t__ wpa_auth_uses_sae (int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static const u8 * hostapd_wpa_auth_get_psk(void *ctx, const u8 *addr,
        const u8 *p2p_dev_addr,
        const u8 *prev_psk, size_t *psk_len,
        int *vlan_id)
{
 struct hostapd_data *hapd = ctx;
 struct sta_info *sta = ap_get_sta(hapd, addr);
 const u8 *psk;

 if (vlan_id)
  *vlan_id = 0;
 if (psk_len)
  *psk_len = PMK_LEN;
 psk = hostapd_get_psk(hapd->conf, addr, p2p_dev_addr, prev_psk,
         vlan_id);





 if (sta && sta->psk && !psk) {
  struct hostapd_sta_wpa_psk_short *pos;

  if (vlan_id)
   *vlan_id = 0;
  psk = sta->psk->psk;
  for (pos = sta->psk; pos; pos = pos->next) {
   if (pos->is_passphrase) {
    pbkdf2_sha1(pos->passphrase,
         hapd->conf->ssid.ssid,
         hapd->conf->ssid.ssid_len, 4096,
         pos->psk, PMK_LEN);
    pos->is_passphrase = 0;
   }
   if (pos->psk == prev_psk) {
    psk = pos->next ? pos->next->psk : ((void*)0);
    break;
   }
  }
 }
 return psk;
}
