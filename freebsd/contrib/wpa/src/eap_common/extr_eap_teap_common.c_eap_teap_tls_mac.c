
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int tmp ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int hmac_sha1 (int const*,size_t,int const*,size_t,int *) ;
 int hmac_sha256 (int const*,size_t,int const*,size_t,int *) ;
 int hmac_sha384 (int const*,size_t,int const*,size_t,int *) ;
 int os_memcpy (int *,int *,size_t) ;
 int os_memset (int *,int ,size_t) ;
 scalar_t__ tls_cipher_suite_mac_sha1 (int ) ;
 scalar_t__ tls_cipher_suite_mac_sha256 (int ) ;
 scalar_t__ tls_cipher_suite_mac_sha384 (int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_teap_tls_mac(u16 tls_cs, const u8 *cmk, size_t cmk_len,
       const u8 *buffer, size_t buffer_len,
       u8 *mac, size_t mac_len)
{
 int res;
 u8 tmp[48];

 os_memset(tmp, 0, sizeof(tmp));
 os_memset(mac, 0, mac_len);

 if (tls_cipher_suite_mac_sha1(tls_cs)) {
  wpa_printf(MSG_DEBUG, "EAP-TEAP: MAC algorithm: HMAC-SHA1");
  res = hmac_sha1(cmk, cmk_len, buffer, buffer_len, tmp);
 } else if (tls_cipher_suite_mac_sha256(tls_cs)) {
  wpa_printf(MSG_DEBUG, "EAP-TEAP: MAC algorithm: HMAC-SHA256");
  res = hmac_sha256(cmk, cmk_len, buffer, buffer_len, tmp);
 } else if (tls_cipher_suite_mac_sha384(tls_cs)) {
  wpa_printf(MSG_DEBUG, "EAP-TEAP: MAC algorithm: HMAC-SHA384");
  res = hmac_sha384(cmk, cmk_len, buffer, buffer_len, tmp);
 } else {
  wpa_printf(MSG_INFO,
      "EAP-TEAP: Unsupported TLS cipher suite 0x%04x",
      tls_cs);
  res = -1;
 }
 if (res < 0)
  return res;





 if (mac_len > sizeof(tmp))
  mac_len = sizeof(tmp);
 os_memcpy(mac, tmp, mac_len);
 return 0;
}
