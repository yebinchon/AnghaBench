
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct wpabuf {int dummy; } ;
struct ikev2_keys {int SK_integ_len; int const* SK_ar; int const* SK_ai; } ;
struct ikev2_integ_alg {size_t hash_len; } ;


 int IKEV2_MAX_HASH_LEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 struct ikev2_integ_alg* ikev2_get_integ (int) ;
 scalar_t__ ikev2_integ_hash (int,int const*,int ,int ,scalar_t__,int const*) ;
 scalar_t__ os_memcmp_const (int const*,int const*,size_t) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_head (struct wpabuf const*) ;
 scalar_t__ wpabuf_len (struct wpabuf const*) ;

int eap_ikev2_validate_icv(int integ_alg, struct ikev2_keys *keys,
      int initiator, const struct wpabuf *msg,
      const u8 *pos, const u8 *end)
{
 const struct ikev2_integ_alg *integ;
 size_t icv_len;
 u8 icv[IKEV2_MAX_HASH_LEN];
 const u8 *SK_a = initiator ? keys->SK_ai : keys->SK_ar;

 integ = ikev2_get_integ(integ_alg);
 if (integ == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-IKEV2: Unknown INTEG "
      "transform / cannot validate ICV");
  return -1;
 }
 icv_len = integ->hash_len;

 if (end - pos < (int) icv_len) {
  wpa_printf(MSG_DEBUG, "EAP-IKEV2: Not enough room in the "
      "message for Integrity Checksum Data");
  return -1;
 }

 if (SK_a == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-IKEV2: No SK_a for ICV validation");
  return -1;
 }

 if (ikev2_integ_hash(integ_alg, SK_a, keys->SK_integ_len,
        wpabuf_head(msg),
        wpabuf_len(msg) - icv_len, icv) < 0) {
  wpa_printf(MSG_INFO, "EAP-IKEV2: Could not calculate ICV");
  return -1;
 }

 if (os_memcmp_const(icv, end - icv_len, icv_len) != 0) {
  wpa_printf(MSG_INFO, "EAP-IKEV2: Invalid ICV");
  wpa_hexdump(MSG_DEBUG, "EAP-IKEV2: Calculated ICV",
       icv, icv_len);
  wpa_hexdump(MSG_DEBUG, "EAP-IKEV2: Received ICV",
       end - icv_len, icv_len);
  return -1;
 }

 wpa_printf(MSG_DEBUG, "EAP-IKEV2: Valid Integrity Checksum Data in "
     "the received message");

 return icv_len;
}
