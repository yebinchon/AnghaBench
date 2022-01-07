
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct x509_certificate {int subject; int extensions_present; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; scalar_t__ length; int payload; } ;


 scalar_t__ ASN1_CLASS_UNIVERSAL ;
 scalar_t__ ASN1_TAG_SEQUENCE ;
 int MSG_DEBUG ;
 int X509_EXT_SUBJECT_ALT_NAME ;
 scalar_t__ asn1_get_next (int const*,size_t,struct asn1_hdr*) ;
 int wpa_printf (int ,char*,...) ;
 int x509_parse_ext_alt_name (int *,int ,scalar_t__) ;

__attribute__((used)) static int x509_parse_ext_subject_alt_name(struct x509_certificate *cert,
        const u8 *pos, size_t len)
{
 struct asn1_hdr hdr;



 if (asn1_get_next(pos, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG, "X509: Expected SEQUENCE in "
      "SubjectAltName; found %d tag 0x%x",
      hdr.class, hdr.tag);
  return -1;
 }

 wpa_printf(MSG_DEBUG, "X509: SubjectAltName");
 cert->extensions_present |= X509_EXT_SUBJECT_ALT_NAME;

 if (hdr.length == 0)
  return 0;

 return x509_parse_ext_alt_name(&cert->subject, hdr.payload,
           hdr.length);
}
