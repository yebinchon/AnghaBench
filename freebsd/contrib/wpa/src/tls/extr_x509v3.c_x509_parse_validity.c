
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct x509_certificate {scalar_t__ not_after; scalar_t__ not_before; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; size_t length; int * payload; } ;


 scalar_t__ ASN1_CLASS_UNIVERSAL ;
 scalar_t__ ASN1_TAG_SEQUENCE ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 scalar_t__ asn1_get_next (int const*,size_t,struct asn1_hdr*) ;
 int wpa_hexdump_ascii (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*,unsigned long,unsigned long) ;
 scalar_t__ x509_parse_time (int *,size_t,unsigned long,scalar_t__*) ;

__attribute__((used)) static int x509_parse_validity(const u8 *buf, size_t len,
          struct x509_certificate *cert, const u8 **next)
{
 struct asn1_hdr hdr;
 const u8 *pos;
 size_t plen;
 if (asn1_get_next(buf, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG, "X509: Expected SEQUENCE "
      "(Validity) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  return -1;
 }
 pos = hdr.payload;
 plen = hdr.length;

 if (plen > (size_t) (buf + len - pos))
  return -1;

 *next = pos + plen;

 if (asn1_get_next(pos, plen, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     x509_parse_time(hdr.payload, hdr.length, hdr.tag,
       &cert->not_before) < 0) {
  wpa_hexdump_ascii(MSG_DEBUG, "X509: Failed to parse notBefore "
      "Time", hdr.payload, hdr.length);
  return -1;
 }

 pos = hdr.payload + hdr.length;
 plen = *next - pos;

 if (asn1_get_next(pos, plen, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     x509_parse_time(hdr.payload, hdr.length, hdr.tag,
       &cert->not_after) < 0) {
  wpa_hexdump_ascii(MSG_DEBUG, "X509: Failed to parse notAfter "
      "Time", hdr.payload, hdr.length);
  return -1;
 }

 wpa_printf(MSG_MSGDUMP, "X509: Validity: notBefore: %lu notAfter: %lu",
     (unsigned long) cert->not_before,
     (unsigned long) cert->not_after);

 return 0;
}
