
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct eap_sm {int dummy; } ;
struct eap_leap_data {scalar_t__ state; int const* peer_response; int const* peer_challenge; int const* ap_response; int const* ap_challenge; } ;
typedef int pw_hash_hash ;
typedef int pw_hash ;


 size_t LEAP_CHALLENGE_LEN ;
 scalar_t__ LEAP_DONE ;
 int LEAP_KEY_LEN ;
 size_t LEAP_RESPONSE_LEN ;
 int MSG_DEBUG ;
 int const* eap_get_config_password2 (struct eap_sm*,size_t*,int*) ;
 int forced_memzero (int const*,int) ;
 scalar_t__ hash_nt_password_hash (int const*,int const*) ;
 int md5_vector (int,int const**,size_t*,int const*) ;
 scalar_t__ nt_password_hash (int const*,size_t,int const*) ;
 int os_free (int const*) ;
 int const* os_malloc (int) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_hexdump_key (int ,char*,int const*,int) ;

__attribute__((used)) static u8 * eap_leap_getKey(struct eap_sm *sm, void *priv, size_t *len)
{
 struct eap_leap_data *data = priv;
 u8 *key, pw_hash_hash[16], pw_hash[16];
 const u8 *addr[5], *password;
 size_t elen[5], password_len;
 int pwhash;

 if (data->state != LEAP_DONE)
  return ((void*)0);

 password = eap_get_config_password2(sm, &password_len, &pwhash);
 if (password == ((void*)0))
  return ((void*)0);

 key = os_malloc(LEAP_KEY_LEN);
 if (key == ((void*)0))
  return ((void*)0);

 if (pwhash) {
  if (hash_nt_password_hash(password, pw_hash_hash)) {
   os_free(key);
   return ((void*)0);
  }
 } else {
  if (nt_password_hash(password, password_len, pw_hash) ||
      hash_nt_password_hash(pw_hash, pw_hash_hash)) {
   os_free(key);
   return ((void*)0);
  }
 }
 wpa_hexdump_key(MSG_DEBUG, "EAP-LEAP: pw_hash_hash",
   pw_hash_hash, 16);
 wpa_hexdump(MSG_DEBUG, "EAP-LEAP: peer_challenge",
      data->peer_challenge, LEAP_CHALLENGE_LEN);
 wpa_hexdump(MSG_DEBUG, "EAP-LEAP: peer_response",
      data->peer_response, LEAP_RESPONSE_LEN);
 wpa_hexdump(MSG_DEBUG, "EAP-LEAP: ap_challenge",
      data->ap_challenge, LEAP_CHALLENGE_LEN);
 wpa_hexdump(MSG_DEBUG, "EAP-LEAP: ap_response",
      data->ap_response, LEAP_RESPONSE_LEN);

 addr[0] = pw_hash_hash;
 elen[0] = 16;
 addr[1] = data->ap_challenge;
 elen[1] = LEAP_CHALLENGE_LEN;
 addr[2] = data->ap_response;
 elen[2] = LEAP_RESPONSE_LEN;
 addr[3] = data->peer_challenge;
 elen[3] = LEAP_CHALLENGE_LEN;
 addr[4] = data->peer_response;
 elen[4] = LEAP_RESPONSE_LEN;
 md5_vector(5, addr, elen, key);
 wpa_hexdump_key(MSG_DEBUG, "EAP-LEAP: master key", key, LEAP_KEY_LEN);
 *len = LEAP_KEY_LEN;

 forced_memzero(pw_hash, sizeof(pw_hash));
 forced_memzero(pw_hash_hash, sizeof(pw_hash_hash));

 return key;
}
