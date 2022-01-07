
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct crypto_public_key {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int TLS_ALERT_DECODE_ERROR ;
 int TLS_ALERT_DECRYPT_ERROR ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_VERSION_1_2 ;
 int WPA_GET_BE16 (int const*) ;
 scalar_t__ crypto_public_key_decrypt_pkcs1 (struct crypto_public_key*,int const*,int,int *,size_t*) ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 scalar_t__ os_memcmp (int *,char*,int) ;
 scalar_t__ os_memcmp_const (int const*,int const*,size_t) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_hexdump_key (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

int tls_verify_signature(u16 tls_version, struct crypto_public_key *pk,
    const u8 *data, size_t data_len,
    const u8 *pos, size_t len, u8 *alert)
{
 u8 *buf;
 const u8 *end = pos + len;
 const u8 *decrypted;
 u16 slen;
 size_t buflen;

 if (end - pos < 2) {
  *alert = TLS_ALERT_DECODE_ERROR;
  return -1;
 }
 slen = WPA_GET_BE16(pos);
 pos += 2;
 if (end - pos < slen) {
  *alert = TLS_ALERT_DECODE_ERROR;
  return -1;
 }
 if (end - pos > slen) {
  wpa_hexdump(MSG_MSGDUMP, "Additional data after Signature",
       pos + slen, end - pos - slen);
  end = pos + slen;
 }

 wpa_hexdump(MSG_MSGDUMP, "TLSv1: Signature", pos, end - pos);
 if (pk == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TLSv1: No public key to verify signature");
  *alert = TLS_ALERT_INTERNAL_ERROR;
  return -1;
 }

 buflen = end - pos;
 buf = os_malloc(end - pos);
 if (buf == ((void*)0)) {
  *alert = TLS_ALERT_INTERNAL_ERROR;
  return -1;
 }
 if (crypto_public_key_decrypt_pkcs1(pk, pos, end - pos, buf, &buflen) <
     0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to decrypt signature");
  os_free(buf);
  *alert = TLS_ALERT_DECRYPT_ERROR;
  return -1;
 }
 decrypted = buf;

 wpa_hexdump_key(MSG_MSGDUMP, "TLSv1: Decrypted Signature",
   decrypted, buflen);
 if (buflen != data_len ||
     os_memcmp_const(decrypted, data, data_len) != 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Invalid Signature in CertificateVerify - did not match calculated hash");
  os_free(buf);
  *alert = TLS_ALERT_DECRYPT_ERROR;
  return -1;
 }

 os_free(buf);

 return 0;
}
