
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct x509_certificate {int extensions_present; int ext_key_usage; } ;
struct asn1_oid {int dummy; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int length; int const* payload; } ;
typedef int buf ;


 scalar_t__ ASN1_CLASS_UNIVERSAL ;
 scalar_t__ ASN1_TAG_SEQUENCE ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int X509_EXT_EXT_KEY_USAGE ;
 int X509_EXT_KEY_USAGE_ANY ;
 int X509_EXT_KEY_USAGE_CLIENT_AUTH ;
 int X509_EXT_KEY_USAGE_OCSP ;
 int X509_EXT_KEY_USAGE_SERVER_AUTH ;
 scalar_t__ asn1_get_next (int const*,size_t,struct asn1_hdr*) ;
 scalar_t__ asn1_get_oid (int const*,int,struct asn1_oid*,int const**) ;
 int asn1_oid_to_str (struct asn1_oid*,char*,int) ;
 int os_strlcpy (char*,char*,int) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*,char*,...) ;
 scalar_t__ x509_any_ext_key_usage_oid (struct asn1_oid*) ;
 scalar_t__ x509_id_kp_client_auth_oid (struct asn1_oid*) ;
 scalar_t__ x509_id_kp_ocsp_oid (struct asn1_oid*) ;
 scalar_t__ x509_id_kp_server_auth_oid (struct asn1_oid*) ;

__attribute__((used)) static int x509_parse_ext_ext_key_usage(struct x509_certificate *cert,
     const u8 *pos, size_t len)
{
 struct asn1_hdr hdr;
 const u8 *end;
 struct asn1_oid oid;







 if (asn1_get_next(pos, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG, "X509: Expected SEQUENCE "
      "(ExtKeyUsageSyntax) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  return -1;
 }
 if (hdr.length > pos + len - hdr.payload)
  return -1;
 pos = hdr.payload;
 end = pos + hdr.length;

 wpa_hexdump(MSG_MSGDUMP, "X509: ExtKeyUsageSyntax", pos, end - pos);

 while (pos < end) {
  char buf[80];

  if (asn1_get_oid(pos, end - pos, &oid, &pos))
   return -1;
  if (x509_any_ext_key_usage_oid(&oid)) {
   os_strlcpy(buf, "anyExtendedKeyUsage", sizeof(buf));
   cert->ext_key_usage |= X509_EXT_KEY_USAGE_ANY;
  } else if (x509_id_kp_server_auth_oid(&oid)) {
   os_strlcpy(buf, "id-kp-serverAuth", sizeof(buf));
   cert->ext_key_usage |= X509_EXT_KEY_USAGE_SERVER_AUTH;
  } else if (x509_id_kp_client_auth_oid(&oid)) {
   os_strlcpy(buf, "id-kp-clientAuth", sizeof(buf));
   cert->ext_key_usage |= X509_EXT_KEY_USAGE_CLIENT_AUTH;
  } else if (x509_id_kp_ocsp_oid(&oid)) {
   os_strlcpy(buf, "id-kp-OCSPSigning", sizeof(buf));
   cert->ext_key_usage |= X509_EXT_KEY_USAGE_OCSP;
  } else {
   asn1_oid_to_str(&oid, buf, sizeof(buf));
  }
  wpa_printf(MSG_DEBUG, "ExtKeyUsage KeyPurposeId: %s", buf);
 }

 cert->extensions_present |= X509_EXT_EXT_KEY_USAGE;

 return 0;
}
