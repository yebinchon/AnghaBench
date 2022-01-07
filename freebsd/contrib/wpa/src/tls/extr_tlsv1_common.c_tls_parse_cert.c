
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct x509_certificate {int public_key_len; int public_key; } ;
struct crypto_public_key {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 struct crypto_public_key* crypto_public_key_from_cert (int const*,size_t) ;
 struct crypto_public_key* crypto_public_key_import (int ,int ) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;
 int x509_certificate_free (struct x509_certificate*) ;
 struct x509_certificate* x509_certificate_parse (int const*,size_t) ;

int tls_parse_cert(const u8 *buf, size_t len, struct crypto_public_key **pk)
{
 struct x509_certificate *cert;

 wpa_hexdump(MSG_MSGDUMP, "TLSv1: Parse ASN.1 DER certificate",
      buf, len);

 *pk = crypto_public_key_from_cert(buf, len);
 if (*pk)
  return 0;

 cert = x509_certificate_parse(buf, len);
 if (cert == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to parse X.509 "
      "certificate");
  return -1;
 }
 *pk = crypto_public_key_import(cert->public_key, cert->public_key_len);
 x509_certificate_free(cert);

 if (*pk == ((void*)0)) {
  wpa_printf(MSG_ERROR, "TLSv1: Failed to import "
      "server public key");
  return -1;
 }

 return 0;
}
