
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {TYPE_1__* ctx; } ;
typedef enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;
struct TYPE_2__ {int msg_ctx; } ;


 int MSG_WARNING ;
 int WPA_ALG_NONE ;
 int wpa_cipher_key_len (int) ;
 int wpa_cipher_rsc_len (int) ;
 int wpa_cipher_to_alg (int) ;
 int wpa_cipher_txt (int) ;
 int wpa_msg (int ,int ,char*,int,...) ;

__attribute__((used)) static int wpa_supplicant_check_group_cipher(struct wpa_sm *sm,
          int group_cipher,
          int keylen, int maxkeylen,
          int *key_rsc_len,
          enum wpa_alg *alg)
{
 int klen;

 *alg = wpa_cipher_to_alg(group_cipher);
 if (*alg == WPA_ALG_NONE) {
  wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
   "WPA: Unsupported Group Cipher %d",
   group_cipher);
  return -1;
 }
 *key_rsc_len = wpa_cipher_rsc_len(group_cipher);

 klen = wpa_cipher_key_len(group_cipher);
 if (keylen != klen || maxkeylen < klen) {
  wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
   "WPA: Unsupported %s Group Cipher key length %d (%d)",
   wpa_cipher_txt(group_cipher), keylen, maxkeylen);
  return -1;
 }
 return 0;
}
