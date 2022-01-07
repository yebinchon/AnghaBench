
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ikev2_prf_alg {int key_len; int hash_len; int id; } ;
struct ikev2_keys {int SK_d_len; int SK_integ_len; int SK_encr_len; int SK_prf_len; void* SK_pr; void* SK_pi; void* SK_er; void* SK_ei; void* SK_ar; void* SK_ai; void* SK_d; } ;
struct ikev2_integ_alg {int key_len; } ;
struct ikev2_encr_alg {int key_len; } ;


 int MSG_DEBUG ;
 int ikev2_free_keys (struct ikev2_keys*) ;
 int ikev2_keys_set (struct ikev2_keys*) ;
 scalar_t__ ikev2_prf_plus (int ,int const*,int ,int const*,size_t,int *,size_t) ;
 int os_free (int *) ;
 void* os_malloc (size_t) ;
 int os_memcpy (void*,int *,size_t) ;
 int wpa_hexdump_key (int ,char*,void*,size_t) ;

int ikev2_derive_sk_keys(const struct ikev2_prf_alg *prf,
    const struct ikev2_integ_alg *integ,
    const struct ikev2_encr_alg *encr,
    const u8 *skeyseed, const u8 *data, size_t data_len,
    struct ikev2_keys *keys)
{
 u8 *keybuf, *pos;
 size_t keybuf_len;





 ikev2_free_keys(keys);
 keys->SK_d_len = prf->key_len;
 keys->SK_integ_len = integ->key_len;
 keys->SK_encr_len = encr->key_len;
 keys->SK_prf_len = prf->key_len;

 keybuf_len = keys->SK_d_len + 2 * keys->SK_integ_len +
  2 * keys->SK_encr_len + 2 * keys->SK_prf_len;
 keybuf = os_malloc(keybuf_len);
 if (keybuf == ((void*)0))
  return -1;

 if (ikev2_prf_plus(prf->id, skeyseed, prf->hash_len,
      data, data_len, keybuf, keybuf_len)) {
  os_free(keybuf);
  return -1;
 }

 pos = keybuf;

 keys->SK_d = os_malloc(keys->SK_d_len);
 if (keys->SK_d) {
  os_memcpy(keys->SK_d, pos, keys->SK_d_len);
  wpa_hexdump_key(MSG_DEBUG, "IKEV2: SK_d",
    keys->SK_d, keys->SK_d_len);
 }
 pos += keys->SK_d_len;

 keys->SK_ai = os_malloc(keys->SK_integ_len);
 if (keys->SK_ai) {
  os_memcpy(keys->SK_ai, pos, keys->SK_integ_len);
  wpa_hexdump_key(MSG_DEBUG, "IKEV2: SK_ai",
    keys->SK_ai, keys->SK_integ_len);
 }
 pos += keys->SK_integ_len;

 keys->SK_ar = os_malloc(keys->SK_integ_len);
 if (keys->SK_ar) {
  os_memcpy(keys->SK_ar, pos, keys->SK_integ_len);
  wpa_hexdump_key(MSG_DEBUG, "IKEV2: SK_ar",
    keys->SK_ar, keys->SK_integ_len);
 }
 pos += keys->SK_integ_len;

 keys->SK_ei = os_malloc(keys->SK_encr_len);
 if (keys->SK_ei) {
  os_memcpy(keys->SK_ei, pos, keys->SK_encr_len);
  wpa_hexdump_key(MSG_DEBUG, "IKEV2: SK_ei",
    keys->SK_ei, keys->SK_encr_len);
 }
 pos += keys->SK_encr_len;

 keys->SK_er = os_malloc(keys->SK_encr_len);
 if (keys->SK_er) {
  os_memcpy(keys->SK_er, pos, keys->SK_encr_len);
  wpa_hexdump_key(MSG_DEBUG, "IKEV2: SK_er",
    keys->SK_er, keys->SK_encr_len);
 }
 pos += keys->SK_encr_len;

 keys->SK_pi = os_malloc(keys->SK_prf_len);
 if (keys->SK_pi) {
  os_memcpy(keys->SK_pi, pos, keys->SK_prf_len);
  wpa_hexdump_key(MSG_DEBUG, "IKEV2: SK_pi",
    keys->SK_pi, keys->SK_prf_len);
 }
 pos += keys->SK_prf_len;

 keys->SK_pr = os_malloc(keys->SK_prf_len);
 if (keys->SK_pr) {
  os_memcpy(keys->SK_pr, pos, keys->SK_prf_len);
  wpa_hexdump_key(MSG_DEBUG, "IKEV2: SK_pr",
    keys->SK_pr, keys->SK_prf_len);
 }

 os_free(keybuf);

 if (!ikev2_keys_set(keys)) {
  ikev2_free_keys(keys);
  return -1;
 }

 return 0;
}
