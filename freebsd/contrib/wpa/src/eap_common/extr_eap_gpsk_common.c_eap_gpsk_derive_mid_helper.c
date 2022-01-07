
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u32 ;




 int EAP_GPSK_VENDOR_IETF ;
 int MSG_DEBUG ;
 int const* SID_LABEL ;
 int WPA_PUT_BE16 (int const*,int ) ;
 int WPA_PUT_BE32 (int const*,int ) ;
 int eap_gpsk_gkdf_cmac (int const*,int const*,size_t,int const*,size_t) ;
 int eap_gpsk_gkdf_sha256 (int const*,int const*,size_t,int const*,size_t) ;
 int os_free (int const*) ;
 int const* os_malloc (size_t) ;
 int os_memcpy (int const*,int const*,size_t) ;
 size_t strlen (int const*) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int eap_gpsk_derive_mid_helper(u32 csuite_specifier,
          u8 *kdf_out, size_t kdf_out_len,
          const u8 *psk, const u8 *seed,
          size_t seed_len, u8 method_type)
{
 u8 *pos, *data;
 size_t data_len;
 int (*gkdf)(const u8 *_psk, const u8 *_data, size_t _data_len,
      u8 *buf, size_t len);

 gkdf = ((void*)0);
 switch (csuite_specifier) {
 case 129:
  gkdf = eap_gpsk_gkdf_cmac;
  break;





 default:
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Unknown cipher %d used in "
      "Session-Id derivation", csuite_specifier);
  return -1;
 }



 data_len = strlen("Method ID") + 1 + 6 + seed_len;
 data = os_malloc(data_len);
 if (data == ((void*)0))
  return -1;
 pos = data;
 os_memcpy(pos, "Method ID", strlen("Method ID"));
 pos += strlen("Method ID");

 os_memcpy(pos, &method_type, 1);
 pos += 1;
 WPA_PUT_BE32(pos, EAP_GPSK_VENDOR_IETF);
 pos += 4;
 WPA_PUT_BE16(pos, csuite_specifier);
 pos += 2;
 os_memcpy(pos, seed, seed_len);
 wpa_hexdump(MSG_DEBUG, "EAP-GPSK: Data to Method ID derivation",
      data, data_len);

 if (gkdf(psk, data, data_len, kdf_out, kdf_out_len) < 0) {
  os_free(data);
  return -1;
 }
 os_free(data);
 wpa_hexdump(MSG_DEBUG, "EAP-GPSK: Method ID", kdf_out, kdf_out_len);

 return 0;
}
