
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef size_t u32 ;


 size_t EAP_EMSK_LEN ;


 int EAP_GPSK_VENDOR_IETF ;
 size_t EAP_MSK_LEN ;
 int MSG_DEBUG ;
 size_t SHA256_MAC_LEN ;
 int WPA_PUT_BE16 (int const*,size_t) ;
 int WPA_PUT_BE32 (int const*,int ) ;
 int eap_gpsk_gkdf_cmac (int const*,int const*,size_t,int const*,size_t) ;
 int eap_gpsk_gkdf_sha256 (int const*,int const*,size_t,int const*,size_t) ;
 int os_free (int const*) ;
 int const* os_malloc (size_t) ;
 int os_memcpy (int const*,int const*,size_t) ;
 int wpa_hexdump_key (int ,char*,int const*,size_t) ;

__attribute__((used)) static int eap_gpsk_derive_keys_helper(u32 csuite_specifier,
           u8 *kdf_out, size_t kdf_out_len,
           const u8 *psk, size_t psk_len,
           const u8 *seed, size_t seed_len,
           u8 *msk, u8 *emsk,
           u8 *sk, size_t sk_len,
           u8 *pk, size_t pk_len)
{
 u8 mk[32], *pos, *data;
 size_t data_len, mk_len;
 int (*gkdf)(const u8 *_psk, const u8 *_data, size_t _data_len,
      u8 *buf, size_t len);

 gkdf = ((void*)0);
 switch (csuite_specifier) {
 case 129:
  gkdf = eap_gpsk_gkdf_cmac;
  mk_len = 16;
  break;






 default:
  return -1;
 }

 if (psk_len < mk_len)
  return -1;

 data_len = 2 + psk_len + 6 + seed_len;
 data = os_malloc(data_len);
 if (data == ((void*)0))
  return -1;
 pos = data;
 WPA_PUT_BE16(pos, psk_len);
 pos += 2;
 os_memcpy(pos, psk, psk_len);
 pos += psk_len;
 WPA_PUT_BE32(pos, EAP_GPSK_VENDOR_IETF);
 pos += 4;
 WPA_PUT_BE16(pos, csuite_specifier);
 pos += 2;
 os_memcpy(pos, seed, seed_len);
 wpa_hexdump_key(MSG_DEBUG, "EAP-GPSK: Data to MK derivation",
   data, data_len);

 if (gkdf(psk, data, data_len, mk, mk_len) < 0) {
  os_free(data);
  return -1;
 }
 os_free(data);
 wpa_hexdump_key(MSG_DEBUG, "EAP-GPSK: MK", mk, mk_len);

 if (gkdf(mk, seed, seed_len, kdf_out, kdf_out_len) < 0)
  return -1;

 pos = kdf_out;
 wpa_hexdump_key(MSG_DEBUG, "EAP-GPSK: MSK", pos, EAP_MSK_LEN);
 os_memcpy(msk, pos, EAP_MSK_LEN);
 pos += EAP_MSK_LEN;

 wpa_hexdump_key(MSG_DEBUG, "EAP-GPSK: EMSK", pos, EAP_EMSK_LEN);
 os_memcpy(emsk, pos, EAP_EMSK_LEN);
 pos += EAP_EMSK_LEN;

 wpa_hexdump_key(MSG_DEBUG, "EAP-GPSK: SK", pos, sk_len);
 os_memcpy(sk, pos, sk_len);
 pos += sk_len;

 if (pk) {
  wpa_hexdump_key(MSG_DEBUG, "EAP-GPSK: PK", pos, pk_len);
  os_memcpy(pk, pos, pk_len);
 }

 return 0;
}
