
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wpa_sm {scalar_t__ pairwise_cipher; scalar_t__ group_cipher; scalar_t__ proto; TYPE_1__* ctx; int rx_replay_counter; scalar_t__ rx_replay_counter_set; int key_mgmt; int eapol; int pmk_len; scalar_t__ ft_completed; } ;
struct wpa_eapol_key {unsigned long type; int replay_counter; int * key_info; } ;
struct ieee802_1x_hdr {unsigned long type; int version; int length; } ;
struct TYPE_2__ {int msg_ctx; } ;


 unsigned long EAPOL_KEY_TYPE_RSN ;
 unsigned long EAPOL_KEY_TYPE_WPA ;
 int EAPOL_VERSION ;
 unsigned long IEEE802_1X_TYPE_EAPOL_KEY ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int MSG_WARNING ;
 scalar_t__ WPA_CIPHER_CCMP ;
 scalar_t__ WPA_CIPHER_GCMP ;
 void* WPA_GET_BE16 (int *) ;
 int WPA_KEY_INFO_ACK ;
 int WPA_KEY_INFO_ENCR_KEY_DATA ;
 int WPA_KEY_INFO_KEY_INDEX_MASK ;
 int WPA_KEY_INFO_KEY_TYPE ;
 int WPA_KEY_INFO_MIC ;
 int WPA_KEY_INFO_REQUEST ;
 int WPA_KEY_INFO_SMK_MESSAGE ;
 int WPA_KEY_INFO_TYPE_AES_128_CMAC ;
 int WPA_KEY_INFO_TYPE_AKM_DEFINED ;
 int WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 ;
 int WPA_KEY_INFO_TYPE_HMAC_SHA1_AES ;
 int WPA_KEY_INFO_TYPE_MASK ;
 scalar_t__ WPA_PROTO_OSEN ;
 scalar_t__ WPA_PROTO_RSN ;
 int WPA_REPLAY_COUNTER_LEN ;
 size_t be_to_host16 (int ) ;
 int bin_clear_free (int *,size_t) ;
 int eapol_sm_notify_lower_layer_success (int ,int ) ;
 scalar_t__ os_memcmp (int ,int ,int ) ;
 int * os_memdup (int const*,size_t) ;
 int wpa_dbg (int ,int ,char*,unsigned long,...) ;
 int wpa_eapol_key_dump (struct wpa_sm*,struct wpa_eapol_key*,size_t,int *,size_t) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 scalar_t__ wpa_key_mgmt_ft (int ) ;
 scalar_t__ wpa_key_mgmt_sha256 (int ) ;
 size_t wpa_mic_len (int ,int ) ;
 int wpa_msg (int ,int ,char*,...) ;
 scalar_t__ wpa_supp_aead_decrypt (struct wpa_sm*,int *,size_t,size_t*) ;
 scalar_t__ wpa_supplicant_decrypt_key_data (struct wpa_sm*,struct wpa_eapol_key*,size_t,int,int *,size_t*) ;
 int wpa_supplicant_process_1_of_2 (struct wpa_sm*,int const*,struct wpa_eapol_key*,int *,size_t,int) ;
 int wpa_supplicant_process_1_of_4 (struct wpa_sm*,int const*,struct wpa_eapol_key*,int,int *,size_t) ;
 int wpa_supplicant_process_3_of_4 (struct wpa_sm*,struct wpa_eapol_key*,int,int *,size_t) ;
 scalar_t__ wpa_supplicant_verify_eapol_key_mic (struct wpa_sm*,struct wpa_eapol_key*,int,int *,size_t) ;
 scalar_t__ wpa_use_akm_defined (int ) ;

int wpa_sm_rx_eapol(struct wpa_sm *sm, const u8 *src_addr,
      const u8 *buf, size_t len)
{
 size_t plen, data_len, key_data_len;
 const struct ieee802_1x_hdr *hdr;
 struct wpa_eapol_key *key;
 u16 key_info, ver;
 u8 *tmp = ((void*)0);
 int ret = -1;
 u8 *mic, *key_data;
 size_t mic_len, keyhdrlen;





 mic_len = wpa_mic_len(sm->key_mgmt, sm->pmk_len);
 keyhdrlen = sizeof(*key) + mic_len + 2;

 if (len < sizeof(*hdr) + keyhdrlen) {
  wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
   "WPA: EAPOL frame too short to be a WPA "
   "EAPOL-Key (len %lu, expecting at least %lu)",
   (unsigned long) len,
   (unsigned long) sizeof(*hdr) + keyhdrlen);
  return 0;
 }

 hdr = (const struct ieee802_1x_hdr *) buf;
 plen = be_to_host16(hdr->length);
 data_len = plen + sizeof(*hdr);
 wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
  "IEEE 802.1X RX: version=%d type=%d length=%lu",
  hdr->version, hdr->type, (unsigned long) plen);

 if (hdr->version < EAPOL_VERSION) {

 }
 if (hdr->type != IEEE802_1X_TYPE_EAPOL_KEY) {
  wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
   "WPA: EAPOL frame (type %u) discarded, "
   "not a Key frame", hdr->type);
  ret = 0;
  goto out;
 }
 wpa_hexdump(MSG_MSGDUMP, "WPA: RX EAPOL-Key", buf, len);
 if (plen > len - sizeof(*hdr) || plen < keyhdrlen) {
  wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
   "WPA: EAPOL frame payload size %lu "
   "invalid (frame size %lu)",
   (unsigned long) plen, (unsigned long) len);
  ret = 0;
  goto out;
 }
 if (data_len < len) {
  wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
   "WPA: ignoring %lu bytes after the IEEE 802.1X data",
   (unsigned long) len - data_len);
 }





 tmp = os_memdup(buf, data_len);
 if (tmp == ((void*)0))
  goto out;
 key = (struct wpa_eapol_key *) (tmp + sizeof(struct ieee802_1x_hdr));
 mic = (u8 *) (key + 1);
 key_data = mic + mic_len + 2;

 if (key->type != EAPOL_KEY_TYPE_WPA && key->type != EAPOL_KEY_TYPE_RSN)
 {
  wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
   "WPA: EAPOL-Key type (%d) unknown, discarded",
   key->type);
  ret = 0;
  goto out;
 }

 key_data_len = WPA_GET_BE16(mic + mic_len);
 wpa_eapol_key_dump(sm, key, key_data_len, mic, mic_len);

 if (key_data_len > plen - keyhdrlen) {
  wpa_msg(sm->ctx->msg_ctx, MSG_INFO, "WPA: Invalid EAPOL-Key "
   "frame - key_data overflow (%u > %u)",
   (unsigned int) key_data_len,
   (unsigned int) (plen - keyhdrlen));
  goto out;
 }

 eapol_sm_notify_lower_layer_success(sm->eapol, 0);
 key_info = WPA_GET_BE16(key->key_info);
 ver = key_info & WPA_KEY_INFO_TYPE_MASK;
 if (ver != WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 &&



     ver != WPA_KEY_INFO_TYPE_HMAC_SHA1_AES &&
     !wpa_use_akm_defined(sm->key_mgmt)) {
  wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
   "WPA: Unsupported EAPOL-Key descriptor version %d",
   ver);
  goto out;
 }

 if (wpa_use_akm_defined(sm->key_mgmt) &&
     ver != WPA_KEY_INFO_TYPE_AKM_DEFINED) {
  wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
   "RSN: Unsupported EAPOL-Key descriptor version %d (expected AKM defined = 0)",
   ver);
  goto out;
 }
 if (sm->pairwise_cipher == WPA_CIPHER_CCMP &&
     !wpa_use_akm_defined(sm->key_mgmt) &&
     ver != WPA_KEY_INFO_TYPE_HMAC_SHA1_AES) {
  wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
   "WPA: CCMP is used, but EAPOL-Key "
   "descriptor version (%d) is not 2", ver);
  if (sm->group_cipher != WPA_CIPHER_CCMP &&
      !(key_info & WPA_KEY_INFO_KEY_TYPE)) {




   wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
    "WPA: Backwards compatibility: allow invalid "
    "version for non-CCMP group keys");
  } else if (ver == WPA_KEY_INFO_TYPE_AES_128_CMAC) {
   wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
    "WPA: Interoperability workaround: allow incorrect (should have been HMAC-SHA1), but stronger (is AES-128-CMAC), descriptor version to be used");
  } else
   goto out;
 } else if (sm->pairwise_cipher == WPA_CIPHER_GCMP &&
     !wpa_use_akm_defined(sm->key_mgmt) &&
     ver != WPA_KEY_INFO_TYPE_HMAC_SHA1_AES) {
  wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
   "WPA: GCMP is used, but EAPOL-Key "
   "descriptor version (%d) is not 2", ver);
  goto out;
 }

 if (sm->rx_replay_counter_set &&
     os_memcmp(key->replay_counter, sm->rx_replay_counter,
        WPA_REPLAY_COUNTER_LEN) <= 0) {
  wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
   "WPA: EAPOL-Key Replay Counter did not increase - "
   "dropping packet");
  goto out;
 }

 if (key_info & WPA_KEY_INFO_SMK_MESSAGE) {
  wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
   "WPA: Unsupported SMK bit in key_info");
  goto out;
 }

 if (!(key_info & WPA_KEY_INFO_ACK)) {
  wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
   "WPA: No Ack bit in key_info");
  goto out;
 }

 if (key_info & WPA_KEY_INFO_REQUEST) {
  wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
   "WPA: EAPOL-Key with Request bit - dropped");
  goto out;
 }

 if ((key_info & WPA_KEY_INFO_MIC) &&
     wpa_supplicant_verify_eapol_key_mic(sm, key, ver, tmp, data_len))
  goto out;
 if ((sm->proto == WPA_PROTO_RSN || sm->proto == WPA_PROTO_OSEN) &&
     (key_info & WPA_KEY_INFO_ENCR_KEY_DATA) && mic_len) {






  if (!(key_info & WPA_KEY_INFO_MIC)) {
   wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
    "WPA: Ignore EAPOL-Key with encrypted but unauthenticated data");
   goto out;
  }
  if (wpa_supplicant_decrypt_key_data(sm, key, mic_len,
          ver, key_data,
          &key_data_len))
   goto out;
 }

 if (key_info & WPA_KEY_INFO_KEY_TYPE) {
  if (key_info & WPA_KEY_INFO_KEY_INDEX_MASK) {
   wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
    "WPA: Ignored EAPOL-Key (Pairwise) with "
    "non-zero key index");
   goto out;
  }
  if (key_info & (WPA_KEY_INFO_MIC |
    WPA_KEY_INFO_ENCR_KEY_DATA)) {

   wpa_supplicant_process_3_of_4(sm, key, ver, key_data,
            key_data_len);
  } else {

   wpa_supplicant_process_1_of_4(sm, src_addr, key,
            ver, key_data,
            key_data_len);
  }
 } else {
  if ((mic_len && (key_info & WPA_KEY_INFO_MIC)) ||
      (!mic_len && (key_info & WPA_KEY_INFO_ENCR_KEY_DATA))) {

   wpa_supplicant_process_1_of_2(sm, src_addr, key,
            key_data, key_data_len,
            ver);
  } else {
   wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
    "WPA: EAPOL-Key (Group) without Mic/Encr bit - "
    "dropped");
  }
 }

 ret = 1;

out:
 bin_clear_free(tmp, data_len);
 return ret;
}
