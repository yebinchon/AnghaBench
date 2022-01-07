
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct TYPE_3__ {int kek_len; int const* kek; } ;
struct wpa_sm {TYPE_2__* ctx; TYPE_1__ ptk; int group_cipher; } ;
struct wpa_gtk_data {size_t gtk_len; size_t keyidx; int tx; int * gtk; int alg; int key_rsc_len; } ;
struct wpa_eapol_key {int const* key_iv; int key_length; } ;
typedef int ek ;
struct TYPE_4__ {int msg_ctx; } ;


 int MSG_ERROR ;
 int MSG_INFO ;
 int MSG_WARNING ;
 size_t WPA_GET_BE16 (int ) ;
 size_t WPA_KEY_INFO_KEY_INDEX_MASK ;
 size_t WPA_KEY_INFO_KEY_INDEX_SHIFT ;
 size_t WPA_KEY_INFO_TXRX ;
 size_t WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 ;
 size_t WPA_KEY_INFO_TYPE_HMAC_SHA1_AES ;
 scalar_t__ aes_unwrap (int const*,size_t,size_t,int const*,int *) ;
 int forced_memzero (int *,int) ;
 int os_memcpy (int *,int const*,size_t) ;
 scalar_t__ rc4_skip (int *,int,int,int *,size_t) ;
 int wpa_msg (int ,int ,char*,...) ;
 scalar_t__ wpa_supplicant_check_group_cipher (struct wpa_sm*,int ,size_t,size_t,int *,int *) ;
 int wpa_supplicant_gtk_tx_bit_workaround (struct wpa_sm*,int) ;

__attribute__((used)) static int wpa_supplicant_process_1_of_2_wpa(struct wpa_sm *sm,
          const struct wpa_eapol_key *key,
          const u8 *key_data,
          size_t key_data_len, u16 key_info,
          u16 ver, struct wpa_gtk_data *gd)
{
 size_t maxkeylen;
 u16 gtk_len;

 gtk_len = WPA_GET_BE16(key->key_length);
 maxkeylen = key_data_len;
 if (ver == WPA_KEY_INFO_TYPE_HMAC_SHA1_AES) {
  if (maxkeylen < 8) {
   wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
    "WPA: Too short maxkeylen (%lu)",
    (unsigned long) maxkeylen);
   return -1;
  }
  maxkeylen -= 8;
 }

 if (gtk_len > maxkeylen ||
     wpa_supplicant_check_group_cipher(sm, sm->group_cipher,
           gtk_len, maxkeylen,
           &gd->key_rsc_len, &gd->alg))
  return -1;

 gd->gtk_len = gtk_len;
 gd->keyidx = (key_info & WPA_KEY_INFO_KEY_INDEX_MASK) >>
  WPA_KEY_INFO_KEY_INDEX_SHIFT;
 if (ver == WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 && sm->ptk.kek_len == 16) {





  u8 ek[32];
  if (key_data_len > sizeof(gd->gtk)) {
   wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
    "WPA: RC4 key data too long (%lu)",
    (unsigned long) key_data_len);
   return -1;
  }
  os_memcpy(ek, key->key_iv, 16);
  os_memcpy(ek + 16, sm->ptk.kek, sm->ptk.kek_len);
  os_memcpy(gd->gtk, key_data, key_data_len);
  if (rc4_skip(ek, 32, 256, gd->gtk, key_data_len)) {
   forced_memzero(ek, sizeof(ek));
   wpa_msg(sm->ctx->msg_ctx, MSG_ERROR,
    "WPA: RC4 failed");
   return -1;
  }
  forced_memzero(ek, sizeof(ek));

 } else if (ver == WPA_KEY_INFO_TYPE_HMAC_SHA1_AES) {
  if (maxkeylen % 8) {
   wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
    "WPA: Unsupported AES-WRAP len %lu",
    (unsigned long) maxkeylen);
   return -1;
  }
  if (maxkeylen > sizeof(gd->gtk)) {
   wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
    "WPA: AES-WRAP key data "
    "too long (keydatalen=%lu maxkeylen=%lu)",
    (unsigned long) key_data_len,
    (unsigned long) maxkeylen);
   return -1;
  }
  if (aes_unwrap(sm->ptk.kek, sm->ptk.kek_len, maxkeylen / 8,
          key_data, gd->gtk)) {
   wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
    "WPA: AES unwrap failed - could not decrypt "
    "GTK");
   return -1;
  }
 } else {
  wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
   "WPA: Unsupported key_info type %d", ver);
  return -1;
 }
 gd->tx = wpa_supplicant_gtk_tx_bit_workaround(
  sm, !!(key_info & WPA_KEY_INFO_TXRX));
 return 0;
}
