
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct x509_certificate {scalar_t__ const* subject_dn; int subject_dn_len; scalar_t__ const* public_key; int public_key_len; size_t serial_number_len; scalar_t__* serial_number; } ;
struct x509_algorithm_identifier {int oid; } ;
struct tlsv1_client {int dummy; } ;
struct os_time {scalar_t__ sec; } ;
struct asn1_hdr {scalar_t__ class; unsigned int tag; scalar_t__* payload; size_t length; } ;
typedef scalar_t__ os_time_t ;
typedef enum tls_ocsp_result { ____Placeholder_tls_ocsp_result } tls_ocsp_result ;


 scalar_t__ ASN1_CLASS_CONTEXT_SPECIFIC ;
 scalar_t__ ASN1_CLASS_UNIVERSAL ;
 unsigned int ASN1_TAG_GENERALIZEDTIME ;
 unsigned int ASN1_TAG_INTEGER ;
 unsigned int ASN1_TAG_OCTETSTRING ;
 unsigned int ASN1_TAG_SEQUENCE ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int TLS_OCSP_GOOD ;
 int TLS_OCSP_REVOKED ;
 int X509_MAX_SERIAL_NUM_LEN ;
 scalar_t__ asn1_get_next (scalar_t__ const*,int,struct asn1_hdr*) ;
 unsigned int ocsp_hash_data (int *,scalar_t__ const*,int,scalar_t__*) ;
 int os_get_time (struct os_time*) ;
 scalar_t__ os_memcmp (scalar_t__ const*,scalar_t__*,size_t) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,int) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ x509_parse_algorithm_identifier (scalar_t__ const*,int,struct x509_algorithm_identifier*,scalar_t__ const**) ;
 scalar_t__ x509_parse_time (scalar_t__*,size_t,unsigned int,scalar_t__*) ;

__attribute__((used)) static int tls_process_ocsp_single_response(struct tlsv1_client *conn,
         struct x509_certificate *cert,
         struct x509_certificate *issuer,
         const u8 *resp, size_t len,
         enum tls_ocsp_result *res)
{
 struct asn1_hdr hdr;
 const u8 *pos, *end;
 struct x509_algorithm_identifier alg;
 const u8 *name_hash, *key_hash;
 size_t name_hash_len, key_hash_len;
 const u8 *serial_number;
 size_t serial_number_len;
 u8 hash[64];
 unsigned int hash_len;
 unsigned int cert_status;
 os_time_t update;
 struct os_time now;

 wpa_hexdump(MSG_MSGDUMP, "OCSP: SingleResponse", resp, len);
 if (asn1_get_next(resp, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG,
      "OCSP: Expected SEQUENCE (CertID) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  return -1;
 }
 pos = hdr.payload;
 end = hdr.payload + hdr.length;
 if (x509_parse_algorithm_identifier(pos, end - pos, &alg, &pos))
  return -1;


 if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_OCTETSTRING) {
  wpa_printf(MSG_DEBUG,
      "OCSP: Expected OCTET STRING (issuerNameHash) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  return -1;
 }
 name_hash = hdr.payload;
 name_hash_len = hdr.length;
 wpa_hexdump(MSG_DEBUG, "OCSP: issuerNameHash",
      name_hash, name_hash_len);
 pos = hdr.payload + hdr.length;

 wpa_hexdump(MSG_DEBUG, "OCSP: Issuer subject DN",
      issuer->subject_dn, issuer->subject_dn_len);
 hash_len = ocsp_hash_data(&alg.oid, issuer->subject_dn,
      issuer->subject_dn_len, hash);
 if (hash_len == 0 || name_hash_len != hash_len ||
     os_memcmp(name_hash, hash, hash_len) != 0) {
  wpa_printf(MSG_DEBUG, "OCSP: issuerNameHash mismatch");
  wpa_hexdump(MSG_DEBUG, "OCSP: Calculated issuerNameHash",
       hash, hash_len);
  return -1;
 }


 if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_OCTETSTRING) {
  wpa_printf(MSG_DEBUG,
      "OCSP: Expected OCTET STRING (issuerKeyHash) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  return -1;
 }
 key_hash = hdr.payload;
 key_hash_len = hdr.length;
 wpa_hexdump(MSG_DEBUG, "OCSP: issuerKeyHash", key_hash, key_hash_len);
 pos = hdr.payload + hdr.length;

 hash_len = ocsp_hash_data(&alg.oid, issuer->public_key,
      issuer->public_key_len, hash);
 if (hash_len == 0 || key_hash_len != hash_len ||
     os_memcmp(key_hash, hash, hash_len) != 0) {
  wpa_printf(MSG_DEBUG, "OCSP: issuerKeyHash mismatch");
  wpa_hexdump(MSG_DEBUG, "OCSP: Calculated issuerKeyHash",
       hash, hash_len);
  return -1;
 }


 if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_INTEGER ||
     hdr.length < 1 || hdr.length > X509_MAX_SERIAL_NUM_LEN) {
  wpa_printf(MSG_DEBUG, "OCSP: No INTEGER tag found for serialNumber; class=%d tag=0x%x length=%u",
      hdr.class, hdr.tag, hdr.length);
  return -1;
 }
 serial_number = hdr.payload;
 serial_number_len = hdr.length;
 while (serial_number_len > 0 && serial_number[0] == 0) {
  serial_number++;
  serial_number_len--;
 }
 wpa_hexdump(MSG_MSGDUMP, "OCSP: serialNumber", serial_number,
      serial_number_len);

 if (serial_number_len != cert->serial_number_len ||
     os_memcmp(serial_number, cert->serial_number,
        serial_number_len) != 0) {
  wpa_printf(MSG_DEBUG, "OCSP: serialNumber mismatch");
  return -1;
 }

 pos = end;
 end = resp + len;


 if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_CONTEXT_SPECIFIC) {
  wpa_printf(MSG_DEBUG,
      "OCSP: Expected CHOICE (CertStatus) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  return -1;
 }
 cert_status = hdr.tag;
 wpa_printf(MSG_DEBUG, "OCSP: certStatus=%u", cert_status);
 wpa_hexdump(MSG_DEBUG, "OCSP: CertStatus additional data",
      hdr.payload, hdr.length);
 pos = hdr.payload + hdr.length;

 os_get_time(&now);

 if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_GENERALIZEDTIME ||
     x509_parse_time(hdr.payload, hdr.length, hdr.tag, &update) < 0) {
  wpa_printf(MSG_DEBUG, "OCSP: Failed to parse thisUpdate");
  return -1;
 }
 wpa_printf(MSG_DEBUG, "OCSP: thisUpdate %lu", (unsigned long) update);
 pos = hdr.payload + hdr.length;
 if ((unsigned long) now.sec < (unsigned long) update) {
  wpa_printf(MSG_DEBUG,
      "OCSP: thisUpdate time in the future (response not yet valid)");
  return -1;
 }


 if (pos < end) {
  if (asn1_get_next(pos, end - pos, &hdr) < 0)
   return -1;
  if (hdr.class == ASN1_CLASS_CONTEXT_SPECIFIC && hdr.tag == 0) {
   const u8 *next = hdr.payload + hdr.length;

   if (asn1_get_next(hdr.payload, hdr.length, &hdr) < 0 ||
       hdr.class != ASN1_CLASS_UNIVERSAL ||
       hdr.tag != ASN1_TAG_GENERALIZEDTIME ||
       x509_parse_time(hdr.payload, hdr.length, hdr.tag,
         &update) < 0) {
    wpa_printf(MSG_DEBUG,
        "OCSP: Failed to parse nextUpdate");
    return -1;
   }
   wpa_printf(MSG_DEBUG, "OCSP: nextUpdate %lu",
       (unsigned long) update);
   pos = next;
   if ((unsigned long) now.sec > (unsigned long) update) {
    wpa_printf(MSG_DEBUG, "OCSP: nextUpdate time in the past (response has expired)");
    return -1;
   }
  }
 }


 if (pos < end) {
  wpa_hexdump(MSG_MSGDUMP, "OCSP: singleExtensions",
       pos, end - pos);

 }

 if (cert_status == 0 )
  *res = TLS_OCSP_GOOD;
 else if (cert_status == 1 )
  *res = TLS_OCSP_REVOKED;
 else
  return -1;
 return 0;
}
