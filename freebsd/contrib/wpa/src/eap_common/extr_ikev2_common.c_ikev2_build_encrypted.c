
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct ikev2_payload_hdr {int payload_length; scalar_t__ flags; int next_payload; } ;
struct ikev2_keys {int SK_integ_len; int SK_encr_len; int * SK_ar; int * SK_ai; int * SK_er; int * SK_ei; } ;
struct ikev2_integ_alg {size_t hash_len; } ;
struct ikev2_encr_alg {size_t block_size; int id; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_PUT_BE16 (int ,size_t) ;
 scalar_t__ ikev2_encr_encrypt (int ,int const*,int ,int *,int ,int ,size_t) ;
 struct ikev2_encr_alg* ikev2_get_encr (int) ;
 struct ikev2_integ_alg* ikev2_get_integ (int) ;
 int ikev2_integ_hash (int,int const*,int ,int ,size_t,int *) ;
 int ikev2_update_hdr (struct wpabuf*) ;
 scalar_t__ random_get_bytes (int *,size_t) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int wpabuf_mhead (struct wpabuf*) ;
 void* wpabuf_put (struct wpabuf*,size_t) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;
 int wpabuf_put_u8 (struct wpabuf*,size_t) ;

int ikev2_build_encrypted(int encr_id, int integ_id, struct ikev2_keys *keys,
     int initiator, struct wpabuf *msg,
     struct wpabuf *plain, u8 next_payload)
{
 struct ikev2_payload_hdr *phdr;
 size_t plen;
 size_t iv_len, pad_len;
 u8 *icv, *iv;
 const struct ikev2_integ_alg *integ_alg;
 const struct ikev2_encr_alg *encr_alg;
 const u8 *SK_e = initiator ? keys->SK_ei : keys->SK_er;
 const u8 *SK_a = initiator ? keys->SK_ai : keys->SK_ar;

 wpa_printf(MSG_DEBUG, "IKEV2: Adding Encrypted payload");



 encr_alg = ikev2_get_encr(encr_id);
 if (encr_alg == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: Unsupported encryption type");
  return -1;
 }
 iv_len = encr_alg->block_size;

 integ_alg = ikev2_get_integ(integ_id);
 if (integ_alg == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: Unsupported intergrity type");
  return -1;
 }

 if (SK_e == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: No SK_e available");
  return -1;
 }

 if (SK_a == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: No SK_a available");
  return -1;
 }

 phdr = wpabuf_put(msg, sizeof(*phdr));
 phdr->next_payload = next_payload;
 phdr->flags = 0;

 iv = wpabuf_put(msg, iv_len);
 if (random_get_bytes(iv, iv_len)) {
  wpa_printf(MSG_INFO, "IKEV2: Could not generate IV");
  return -1;
 }

 pad_len = iv_len - (wpabuf_len(plain) + 1) % iv_len;
 if (pad_len == iv_len)
  pad_len = 0;
 wpabuf_put(plain, pad_len);
 wpabuf_put_u8(plain, pad_len);

 if (ikev2_encr_encrypt(encr_alg->id, SK_e, keys->SK_encr_len, iv,
          wpabuf_head(plain), wpabuf_mhead(plain),
          wpabuf_len(plain)) < 0)
  return -1;

 wpabuf_put_buf(msg, plain);


 icv = wpabuf_put(msg, integ_alg->hash_len);
 plen = (u8 *) wpabuf_put(msg, 0) - (u8 *) phdr;
 WPA_PUT_BE16(phdr->payload_length, plen);

 ikev2_update_hdr(msg);

 return ikev2_integ_hash(integ_id, SK_a, keys->SK_integ_len,
    wpabuf_head(msg),
    wpabuf_len(msg) - integ_alg->hash_len, icv);

 return 0;
}
