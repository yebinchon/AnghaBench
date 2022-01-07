
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_hdr {int length; int* payload; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int asn1_valid_der_boolean(struct asn1_hdr *hdr)
{

 if (hdr->length != 1) {
  wpa_printf(MSG_DEBUG, "ASN.1: Unexpected BOOLEAN length (%u)",
      hdr->length);
  return 0;
 }

 if (hdr->payload[0] != 0 && hdr->payload[0] != 0xff) {
  wpa_printf(MSG_DEBUG,
      "ASN.1: Invalid BOOLEAN value 0x%x (DER requires 0 or 0xff)",
      hdr->payload[0]);
  return 0;
 }

 return 1;
}
