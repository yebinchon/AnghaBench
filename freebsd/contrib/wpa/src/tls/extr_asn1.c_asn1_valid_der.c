
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_hdr {scalar_t__ class; scalar_t__ tag; } ;


 scalar_t__ ASN1_CLASS_UNIVERSAL ;
 scalar_t__ ASN1_TAG_BOOLEAN ;
 int asn1_valid_der_boolean (struct asn1_hdr*) ;

__attribute__((used)) static int asn1_valid_der(struct asn1_hdr *hdr)
{
 if (hdr->class != ASN1_CLASS_UNIVERSAL)
  return 1;
 if (hdr->tag == ASN1_TAG_BOOLEAN && !asn1_valid_der_boolean(hdr))
  return 0;
 return 1;
}
