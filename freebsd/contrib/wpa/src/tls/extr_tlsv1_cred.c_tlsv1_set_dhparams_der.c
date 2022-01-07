
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_credentials {scalar_t__ dh_p_len; scalar_t__ dh_g_len; int * dh_g; int * dh_p; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; scalar_t__ length; int * payload; } ;


 scalar_t__ ASN1_CLASS_UNIVERSAL ;
 scalar_t__ ASN1_TAG_INTEGER ;
 scalar_t__ ASN1_TAG_SEQUENCE ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 scalar_t__ asn1_get_next (int const*,int,struct asn1_hdr*) ;
 int os_free (int *) ;
 void* os_memdup (int *,scalar_t__) ;
 int wpa_hexdump (int ,char*,int *,scalar_t__) ;
 int wpa_printf (int ,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int tlsv1_set_dhparams_der(struct tlsv1_credentials *cred,
      const u8 *dh, size_t len)
{
 struct asn1_hdr hdr;
 const u8 *pos, *end;

 pos = dh;
 end = dh + len;
 if (asn1_get_next(pos, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG, "DH: DH parameters did not start with a "
      "valid SEQUENCE - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  return -1;
 }
 pos = hdr.payload;


 if (asn1_get_next(pos, end - pos, &hdr) < 0)
  return -1;

 if (hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_INTEGER) {
  wpa_printf(MSG_DEBUG, "DH: No INTEGER tag found for p; "
      "class=%d tag=0x%x", hdr.class, hdr.tag);
  return -1;
 }

 wpa_hexdump(MSG_MSGDUMP, "DH: prime (p)", hdr.payload, hdr.length);
 if (hdr.length == 0)
  return -1;
 os_free(cred->dh_p);
 cred->dh_p = os_memdup(hdr.payload, hdr.length);
 if (cred->dh_p == ((void*)0))
  return -1;
 cred->dh_p_len = hdr.length;
 pos = hdr.payload + hdr.length;


 if (asn1_get_next(pos, end - pos, &hdr) < 0)
  return -1;

 if (hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_INTEGER) {
  wpa_printf(MSG_DEBUG, "DH: No INTEGER tag found for g; "
      "class=%d tag=0x%x", hdr.class, hdr.tag);
  return -1;
 }

 wpa_hexdump(MSG_MSGDUMP, "DH: base (g)", hdr.payload, hdr.length);
 if (hdr.length == 0)
  return -1;
 os_free(cred->dh_g);
 cred->dh_g = os_memdup(hdr.payload, hdr.length);
 if (cred->dh_g == ((void*)0))
  return -1;
 cred->dh_g_len = hdr.length;

 return 0;
}
