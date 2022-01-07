
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct x509_certificate {size_t cert_len; int tbs_cert_len; int sign_value_len; scalar_t__ const* sign_value; int signature_alg; scalar_t__* cert_start; scalar_t__* tbs_cert_start; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int length; scalar_t__* payload; } ;


 scalar_t__ ASN1_CLASS_UNIVERSAL ;
 scalar_t__ ASN1_TAG_BITSTRING ;
 scalar_t__ ASN1_TAG_SEQUENCE ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 scalar_t__ asn1_get_next (scalar_t__ const*,int,struct asn1_hdr*) ;
 int os_free (scalar_t__ const*) ;
 int os_memcpy (struct x509_certificate*,scalar_t__ const*,size_t) ;
 scalar_t__ const* os_memdup (scalar_t__ const*,int) ;
 struct x509_certificate* os_zalloc (int) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,int) ;
 int wpa_printf (int ,char*,...) ;
 int x509_certificate_free (struct x509_certificate*) ;
 scalar_t__ x509_parse_algorithm_identifier (scalar_t__ const*,int,int *,scalar_t__ const**) ;
 scalar_t__ x509_parse_tbs_certificate (scalar_t__ const*,int,struct x509_certificate*,scalar_t__ const**) ;

struct x509_certificate * x509_certificate_parse(const u8 *buf, size_t len)
{
 struct asn1_hdr hdr;
 const u8 *pos, *end, *hash_start;
 struct x509_certificate *cert;

 cert = os_zalloc(sizeof(*cert) + len);
 if (cert == ((void*)0))
  return ((void*)0);
 os_memcpy(cert + 1, buf, len);
 cert->cert_start = (u8 *) (cert + 1);
 cert->cert_len = len;

 pos = buf;
 end = buf + len;




 if (asn1_get_next(pos, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG, "X509: Certificate did not start with "
      "a valid SEQUENCE - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  x509_certificate_free(cert);
  return ((void*)0);
 }
 pos = hdr.payload;

 if (hdr.length > end - pos) {
  x509_certificate_free(cert);
  return ((void*)0);
 }

 if (hdr.length < end - pos) {
  wpa_hexdump(MSG_MSGDUMP, "X509: Ignoring extra data after DER "
       "encoded certificate",
       pos + hdr.length, end - (pos + hdr.length));
  end = pos + hdr.length;
 }

 hash_start = pos;
 cert->tbs_cert_start = cert->cert_start + (hash_start - buf);
 if (x509_parse_tbs_certificate(pos, end - pos, cert, &pos)) {
  x509_certificate_free(cert);
  return ((void*)0);
 }
 cert->tbs_cert_len = pos - hash_start;


 if (x509_parse_algorithm_identifier(pos, end - pos,
         &cert->signature_alg, &pos)) {
  x509_certificate_free(cert);
  return ((void*)0);
 }


 if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_BITSTRING) {
  wpa_printf(MSG_DEBUG, "X509: Expected BITSTRING "
      "(signatureValue) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  x509_certificate_free(cert);
  return ((void*)0);
 }
 if (hdr.length < 1) {
  x509_certificate_free(cert);
  return ((void*)0);
 }
 pos = hdr.payload;
 if (*pos) {
  wpa_printf(MSG_DEBUG, "X509: BITSTRING - %d unused bits",
      *pos);




  x509_certificate_free(cert);
  return ((void*)0);
 }
 os_free(cert->sign_value);
 cert->sign_value = os_memdup(pos + 1, hdr.length - 1);
 if (cert->sign_value == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "X509: Failed to allocate memory for "
      "signatureValue");
  x509_certificate_free(cert);
  return ((void*)0);
 }
 cert->sign_value_len = hdr.length - 1;
 wpa_hexdump(MSG_MSGDUMP, "X509: signature",
      cert->sign_value, cert->sign_value_len);

 return cert;
}
