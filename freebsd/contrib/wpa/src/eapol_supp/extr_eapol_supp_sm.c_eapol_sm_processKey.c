
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee802_1x_eapol_key {int key_index; struct ieee802_1x_eapol_key* replay_counter; struct ieee802_1x_eapol_key* key_iv; struct ieee802_1x_eapol_key* key_signature; int type; int key_length; } ;
typedef struct ieee802_1x_eapol_key u8 ;
typedef int u16 ;
struct ieee802_1x_hdr {int length; int type; int version; } ;
struct TYPE_3__ {int required_keys; int accept_802_1x_keys; } ;
struct eapol_sm {int last_rx_key_len; TYPE_2__* ctx; void* portValid; TYPE_1__ conf; void* broadcast_key_received; void* unicast_key_received; struct ieee802_1x_eapol_key* last_replay_counter; void* replay_counter_valid; int * last_rx_key; } ;
struct eap_key_data {struct ieee802_1x_eapol_key* encr_key; struct ieee802_1x_eapol_key* sign_key; } ;
typedef int keydata ;
struct TYPE_4__ {scalar_t__ (* set_wep_key ) (int ,int,int,struct ieee802_1x_eapol_key*,int) ;int ctx; int (* eapol_done_cb ) (int ) ;} ;


 int EAPOL_REQUIRE_KEY_BROADCAST ;
 int EAPOL_REQUIRE_KEY_UNICAST ;
 int IEEE8021X_ENCR_KEY_LEN ;
 int IEEE8021X_KEY_INDEX_FLAG ;
 int IEEE8021X_KEY_INDEX_MASK ;
 int IEEE8021X_KEY_IV_LEN ;
 int IEEE8021X_KEY_SIGN_LEN ;
 int IEEE8021X_REPLAY_COUNTER_LEN ;
 int IEEE8021X_SIGN_KEY_LEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_WARNING ;
 void* TRUE ;
 int WPA_GET_BE16 (int ) ;
 int be_to_host16 (int ) ;
 int eapol_sm_get_key (struct eapol_sm*,struct ieee802_1x_eapol_key*,int) ;
 int eapol_sm_notify_lower_layer_success (struct eapol_sm*,int) ;
 int hmac_md5 (struct ieee802_1x_eapol_key*,int,int *,int,struct ieee802_1x_eapol_key*) ;
 scalar_t__ os_memcmp (struct ieee802_1x_eapol_key*,struct ieee802_1x_eapol_key*,int) ;
 scalar_t__ os_memcmp_const (struct ieee802_1x_eapol_key*,struct ieee802_1x_eapol_key*,int) ;
 int os_memcpy (struct ieee802_1x_eapol_key*,struct ieee802_1x_eapol_key*,int) ;
 int os_memset (struct ieee802_1x_eapol_key*,int ,int) ;
 int rc4_skip (struct ieee802_1x_eapol_key*,int,int ,struct ieee802_1x_eapol_key*,int) ;
 scalar_t__ stub1 (int ,int,int,struct ieee802_1x_eapol_key*,int) ;
 int stub2 (int ) ;
 int wpa_hexdump (int ,char*,struct ieee802_1x_eapol_key*,int) ;
 int wpa_hexdump_key (int ,char*,struct ieee802_1x_eapol_key*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eapol_sm_processKey(struct eapol_sm *sm)
{

 struct ieee802_1x_hdr *hdr;
 struct ieee802_1x_eapol_key *key;
 struct eap_key_data keydata;
 u8 orig_key_sign[IEEE8021X_KEY_SIGN_LEN], datakey[32];

 u8 ekey[IEEE8021X_KEY_IV_LEN + IEEE8021X_ENCR_KEY_LEN];

 int key_len, res, sign_key_len, encr_key_len;
 u16 rx_key_length;
 size_t plen;

 wpa_printf(MSG_DEBUG, "EAPOL: processKey");
 if (sm->last_rx_key == ((void*)0))
  return;

 if (!sm->conf.accept_802_1x_keys) {
  wpa_printf(MSG_WARNING, "EAPOL: Received IEEE 802.1X EAPOL-Key"
      " even though this was not accepted - "
      "ignoring this packet");
  return;
 }

 if (sm->last_rx_key_len < sizeof(*hdr) + sizeof(*key))
  return;
 hdr = (struct ieee802_1x_hdr *) sm->last_rx_key;
 key = (struct ieee802_1x_eapol_key *) (hdr + 1);
 plen = be_to_host16(hdr->length);
 if (sizeof(*hdr) + plen > sm->last_rx_key_len || plen < sizeof(*key)) {
  wpa_printf(MSG_WARNING, "EAPOL: Too short EAPOL-Key frame");
  return;
 }
 rx_key_length = WPA_GET_BE16(key->key_length);
 wpa_printf(MSG_DEBUG, "EAPOL: RX IEEE 802.1X ver=%d type=%d len=%d "
     "EAPOL-Key: type=%d key_length=%d key_index=0x%x",
     hdr->version, hdr->type, be_to_host16(hdr->length),
     key->type, rx_key_length, key->key_index);

 eapol_sm_notify_lower_layer_success(sm, 1);
 sign_key_len = IEEE8021X_SIGN_KEY_LEN;
 encr_key_len = IEEE8021X_ENCR_KEY_LEN;
 res = eapol_sm_get_key(sm, (u8 *) &keydata, sizeof(keydata));
 if (res < 0) {
  wpa_printf(MSG_DEBUG, "EAPOL: Could not get master key for "
      "decrypting EAPOL-Key keys");
  return;
 }
 if (res == 16) {

  res = eapol_sm_get_key(sm, (u8 *) &keydata, 16);
  if (res) {
   wpa_printf(MSG_DEBUG, "EAPOL: Could not get LEAP "
       "master key for decrypting EAPOL-Key keys");
   return;
  }
  sign_key_len = 16;
  encr_key_len = 16;
  os_memcpy(keydata.sign_key, keydata.encr_key, 16);
 } else if (res) {
  wpa_printf(MSG_DEBUG, "EAPOL: Could not get enough master key "
      "data for decrypting EAPOL-Key keys (res=%d)", res);
  return;
 }


 if (sm->replay_counter_valid &&
     os_memcmp(sm->last_replay_counter, key->replay_counter,
        IEEE8021X_REPLAY_COUNTER_LEN) >= 0) {
  wpa_printf(MSG_WARNING, "EAPOL: EAPOL-Key replay counter did "
      "not increase - ignoring key");
  wpa_hexdump(MSG_DEBUG, "EAPOL: last replay counter",
       sm->last_replay_counter,
       IEEE8021X_REPLAY_COUNTER_LEN);
  wpa_hexdump(MSG_DEBUG, "EAPOL: received replay counter",
       key->replay_counter, IEEE8021X_REPLAY_COUNTER_LEN);
  return;
 }


 os_memcpy(orig_key_sign, key->key_signature, IEEE8021X_KEY_SIGN_LEN);
 os_memset(key->key_signature, 0, IEEE8021X_KEY_SIGN_LEN);
 hmac_md5(keydata.sign_key, sign_key_len,
   sm->last_rx_key, sizeof(*hdr) + be_to_host16(hdr->length),
   key->key_signature);
 if (os_memcmp_const(orig_key_sign, key->key_signature,
       IEEE8021X_KEY_SIGN_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "EAPOL: Invalid key signature in "
      "EAPOL-Key packet");
  os_memcpy(key->key_signature, orig_key_sign,
     IEEE8021X_KEY_SIGN_LEN);
  return;
 }
 wpa_printf(MSG_DEBUG, "EAPOL: EAPOL-Key key signature verified");

 key_len = plen - sizeof(*key);
 if (key_len > 32 || rx_key_length > 32) {
  wpa_printf(MSG_WARNING, "EAPOL: Too long key data length %d",
      key_len ? key_len : rx_key_length);
  return;
 }
 if (key_len == rx_key_length) {







  os_memcpy(ekey, key->key_iv, IEEE8021X_KEY_IV_LEN);
  os_memcpy(ekey + IEEE8021X_KEY_IV_LEN, keydata.encr_key,
     encr_key_len);
  os_memcpy(datakey, key + 1, key_len);
  rc4_skip(ekey, IEEE8021X_KEY_IV_LEN + encr_key_len, 0,
    datakey, key_len);
  wpa_hexdump_key(MSG_DEBUG, "EAPOL: Decrypted(RC4) key",
    datakey, key_len);

 } else if (key_len == 0) {
  key_len = rx_key_length;
  os_memcpy(datakey, keydata.encr_key, key_len);
  wpa_hexdump_key(MSG_DEBUG, "EAPOL: using part of EAP keying "
    "material data encryption key",
    datakey, key_len);
 } else {
  wpa_printf(MSG_DEBUG, "EAPOL: Invalid key data length %d "
      "(key_length=%d)", key_len, rx_key_length);
  return;
 }

 sm->replay_counter_valid = TRUE;
 os_memcpy(sm->last_replay_counter, key->replay_counter,
    IEEE8021X_REPLAY_COUNTER_LEN);

 wpa_printf(MSG_DEBUG, "EAPOL: Setting dynamic WEP key: %s keyidx %d "
     "len %d",
     key->key_index & IEEE8021X_KEY_INDEX_FLAG ?
     "unicast" : "broadcast",
     key->key_index & IEEE8021X_KEY_INDEX_MASK, key_len);

 if (sm->ctx->set_wep_key &&
     sm->ctx->set_wep_key(sm->ctx->ctx,
     key->key_index & IEEE8021X_KEY_INDEX_FLAG,
     key->key_index & IEEE8021X_KEY_INDEX_MASK,
     datakey, key_len) < 0) {
  wpa_printf(MSG_WARNING, "EAPOL: Failed to set WEP key to the "
      " driver.");
 } else {
  if (key->key_index & IEEE8021X_KEY_INDEX_FLAG)
   sm->unicast_key_received = TRUE;
  else
   sm->broadcast_key_received = TRUE;

  if ((sm->unicast_key_received ||
       !(sm->conf.required_keys & EAPOL_REQUIRE_KEY_UNICAST)) &&
      (sm->broadcast_key_received ||
       !(sm->conf.required_keys & EAPOL_REQUIRE_KEY_BROADCAST)))
  {
   wpa_printf(MSG_DEBUG, "EAPOL: all required EAPOL-Key "
       "frames received");
   sm->portValid = TRUE;
   if (sm->ctx->eapol_done_cb)
    sm->ctx->eapol_done_cb(sm->ctx->ctx);
  }
 }

}
