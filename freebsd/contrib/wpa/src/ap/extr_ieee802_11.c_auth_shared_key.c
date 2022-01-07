
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sta_info {int * challenge; int wpa_sm; int flags; int addr; } ;
struct hostapd_data {int dummy; } ;
typedef int key ;


 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_LEVEL_INFO ;
 int HOSTAPD_MODULE_IEEE80211 ;
 int WLAN_AUTH_CHALLENGE_LEN ;
 int WLAN_STATUS_CHALLENGE_FAIL ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int WLAN_STA_AUTH ;
 int WPA_AUTH ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*,...) ;
 int os_free (int *) ;
 scalar_t__ os_get_random (int *,int) ;
 scalar_t__ os_memcmp_const (int *,int const*,int ) ;
 int * os_zalloc (int ) ;
 int rc4_skip (int *,int,int ,int *,int ) ;
 int wpa_auth_sm_event (int ,int ) ;

__attribute__((used)) static u16 auth_shared_key(struct hostapd_data *hapd, struct sta_info *sta,
      u16 auth_transaction, const u8 *challenge,
      int iswep)
{
 hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_IEEE80211,
         HOSTAPD_LEVEL_DEBUG,
         "authentication (shared key, transaction %d)",
         auth_transaction);

 if (auth_transaction == 1) {
  if (!sta->challenge) {

   u8 key[8];

   sta->challenge = os_zalloc(WLAN_AUTH_CHALLENGE_LEN);
   if (sta->challenge == ((void*)0))
    return WLAN_STATUS_UNSPECIFIED_FAILURE;

   if (os_get_random(key, sizeof(key)) < 0) {
    os_free(sta->challenge);
    sta->challenge = ((void*)0);
    return WLAN_STATUS_UNSPECIFIED_FAILURE;
   }

   rc4_skip(key, sizeof(key), 0,
     sta->challenge, WLAN_AUTH_CHALLENGE_LEN);
  }
  return 0;
 }

 if (auth_transaction != 3)
  return WLAN_STATUS_UNSPECIFIED_FAILURE;


 if (!iswep || !sta->challenge || !challenge ||
     os_memcmp_const(sta->challenge, challenge,
       WLAN_AUTH_CHALLENGE_LEN)) {
  hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_IEEE80211,
          HOSTAPD_LEVEL_INFO,
          "shared key authentication - invalid "
          "challenge-response");
  return WLAN_STATUS_CHALLENGE_FAIL;
 }

 hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_IEEE80211,
         HOSTAPD_LEVEL_DEBUG,
         "authentication OK (shared key)");
 sta->flags |= WLAN_STA_AUTH;
 wpa_auth_sm_event(sta->wpa_sm, WPA_AUTH);
 os_free(sta->challenge);
 sta->challenge = ((void*)0);

 return 0;
}
