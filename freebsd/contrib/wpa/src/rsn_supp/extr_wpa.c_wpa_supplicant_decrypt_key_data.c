
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned int u16 ;
struct TYPE_3__ {int kek_len; int * kek; } ;
struct wpa_sm {TYPE_2__* ctx; TYPE_1__ ptk; int key_mgmt; int ptk_set; } ;
struct wpa_eapol_key {int * key_iv; } ;
typedef int ek ;
struct TYPE_4__ {int msg_ctx; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int MSG_WARNING ;
 unsigned int WPA_KEY_INFO_TYPE_AES_128_CMAC ;
 unsigned int WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 ;
 unsigned int WPA_KEY_INFO_TYPE_HMAC_SHA1_AES ;
 int WPA_PUT_BE16 (int *,size_t) ;
 scalar_t__ aes_unwrap (int *,size_t,size_t,int *,int *) ;
 int bin_clear_free (int *,size_t) ;
 int forced_memzero (int *,int) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int *,size_t) ;
 int os_memset (int *,int,size_t) ;
 scalar_t__ rc4_skip (int *,int,int,int *,size_t) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_hexdump_key (int ,char*,int *,size_t) ;
 int wpa_msg (int ,int ,char*,...) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpa_use_aes_key_wrap (int ) ;

__attribute__((used)) static int wpa_supplicant_decrypt_key_data(struct wpa_sm *sm,
        struct wpa_eapol_key *key,
        size_t mic_len, u16 ver,
        u8 *key_data, size_t *key_data_len)
{
 wpa_hexdump(MSG_DEBUG, "RSN: encrypted key data",
      key_data, *key_data_len);
 if (!sm->ptk_set) {
  wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
   "WPA: PTK not available, cannot decrypt EAPOL-Key Key "
   "Data");
  return -1;
 }



 if (ver == WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 && sm->ptk.kek_len == 16) {





  u8 ek[32];

  wpa_printf(MSG_DEBUG, "WPA: Decrypt Key Data using RC4");
  os_memcpy(ek, key->key_iv, 16);
  os_memcpy(ek + 16, sm->ptk.kek, sm->ptk.kek_len);
  if (rc4_skip(ek, 32, 256, key_data, *key_data_len)) {
   forced_memzero(ek, sizeof(ek));
   wpa_msg(sm->ctx->msg_ctx, MSG_ERROR,
    "WPA: RC4 failed");
   return -1;
  }
  forced_memzero(ek, sizeof(ek));

 } else if (ver == WPA_KEY_INFO_TYPE_HMAC_SHA1_AES ||
     ver == WPA_KEY_INFO_TYPE_AES_128_CMAC ||
     wpa_use_aes_key_wrap(sm->key_mgmt)) {
  u8 *buf;

  wpa_printf(MSG_DEBUG,
      "WPA: Decrypt Key Data using AES-UNWRAP (KEK length %u)",
      (unsigned int) sm->ptk.kek_len);
  if (*key_data_len < 8 || *key_data_len % 8) {
   wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
    "WPA: Unsupported AES-WRAP len %u",
    (unsigned int) *key_data_len);
   return -1;
  }
  *key_data_len -= 8;
  buf = os_malloc(*key_data_len);
  if (buf == ((void*)0)) {
   wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
    "WPA: No memory for AES-UNWRAP buffer");
   return -1;
  }



  if (aes_unwrap(sm->ptk.kek, sm->ptk.kek_len, *key_data_len / 8,
          key_data, buf)) {





   bin_clear_free(buf, *key_data_len);
   wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
    "WPA: AES unwrap failed - "
    "could not decrypt EAPOL-Key key data");
   return -1;
  }



  os_memcpy(key_data, buf, *key_data_len);
  bin_clear_free(buf, *key_data_len);
  WPA_PUT_BE16(((u8 *) (key + 1)) + mic_len, *key_data_len);
 } else {
  wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
   "WPA: Unsupported key_info type %d", ver);
  return -1;
 }
 wpa_hexdump_key(MSG_DEBUG, "WPA: decrypted EAPOL-Key key data",
   key_data, *key_data_len);
 return 0;
}
