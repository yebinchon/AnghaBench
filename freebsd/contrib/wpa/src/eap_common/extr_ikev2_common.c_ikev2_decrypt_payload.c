
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ikev2_keys {size_t* SK_ei; size_t* SK_er; size_t* SK_ai; size_t* SK_ar; int SK_encr_len; int SK_integ_len; } ;
struct ikev2_integ_alg {size_t hash_len; } ;
struct ikev2_hdr {int dummy; } ;
struct ikev2_encr_alg {size_t block_size; int id; } ;


 int IKEV2_MAX_HASH_LEN ;
 int MSG_INFO ;
 scalar_t__ ikev2_encr_decrypt (int ,size_t const*,int ,size_t const*,size_t const*,size_t*,size_t) ;
 struct ikev2_encr_alg* ikev2_get_encr (int) ;
 struct ikev2_integ_alg* ikev2_get_integ (int) ;
 scalar_t__ ikev2_integ_hash (int,size_t const*,int ,size_t const*,int,size_t*) ;
 int os_free (size_t*) ;
 size_t* os_malloc (size_t) ;
 scalar_t__ os_memcmp_const (size_t const*,size_t*,size_t) ;
 int wpa_printf (int ,char*) ;

u8 * ikev2_decrypt_payload(int encr_id, int integ_id,
      struct ikev2_keys *keys, int initiator,
      const struct ikev2_hdr *hdr,
      const u8 *encrypted, size_t encrypted_len,
      size_t *res_len)
{
 size_t iv_len;
 const u8 *pos, *end, *iv, *integ;
 u8 hash[IKEV2_MAX_HASH_LEN], *decrypted;
 size_t decrypted_len, pad_len;
 const struct ikev2_integ_alg *integ_alg;
 const struct ikev2_encr_alg *encr_alg;
 const u8 *SK_e = initiator ? keys->SK_ei : keys->SK_er;
 const u8 *SK_a = initiator ? keys->SK_ai : keys->SK_ar;

 if (encrypted == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: No Encrypted payload in SA_AUTH");
  return ((void*)0);
 }

 encr_alg = ikev2_get_encr(encr_id);
 if (encr_alg == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: Unsupported encryption type");
  return ((void*)0);
 }
 iv_len = encr_alg->block_size;

 integ_alg = ikev2_get_integ(integ_id);
 if (integ_alg == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: Unsupported intergrity type");
  return ((void*)0);
 }

 if (encrypted_len < iv_len + 1 + integ_alg->hash_len) {
  wpa_printf(MSG_INFO, "IKEV2: No room for IV or Integrity "
     "Checksum");
  return ((void*)0);
 }

 iv = encrypted;
 pos = iv + iv_len;
 end = encrypted + encrypted_len;
 integ = end - integ_alg->hash_len;

 if (SK_a == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: No SK_a available");
  return ((void*)0);
 }
 if (ikev2_integ_hash(integ_id, SK_a, keys->SK_integ_len,
        (const u8 *) hdr,
        integ - (const u8 *) hdr, hash) < 0) {
  wpa_printf(MSG_INFO, "IKEV2: Failed to calculate integrity "
      "hash");
  return ((void*)0);
 }
 if (os_memcmp_const(integ, hash, integ_alg->hash_len) != 0) {
  wpa_printf(MSG_INFO, "IKEV2: Incorrect Integrity Checksum "
      "Data");
  return ((void*)0);
 }

 if (SK_e == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: No SK_e available");
  return ((void*)0);
 }

 decrypted_len = integ - pos;
 decrypted = os_malloc(decrypted_len);
 if (decrypted == ((void*)0))
  return ((void*)0);

 if (ikev2_encr_decrypt(encr_alg->id, SK_e, keys->SK_encr_len, iv, pos,
          decrypted, decrypted_len) < 0) {
  os_free(decrypted);
  return ((void*)0);
 }

 pad_len = decrypted[decrypted_len - 1];
 if (decrypted_len < pad_len + 1) {
  wpa_printf(MSG_INFO, "IKEV2: Invalid padding in encrypted "
      "payload");
  os_free(decrypted);
  return ((void*)0);
 }

 decrypted_len -= pad_len + 1;

 *res_len = decrypted_len;
 return decrypted;
}
