
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_TFLG_NDEF ;
 int asn1_item_flags_i2d (int *,unsigned char**,int const*,int ) ;

int ASN1_item_ndef_i2d(ASN1_VALUE *val, unsigned char **out,
                       const ASN1_ITEM *it)
{
    return asn1_item_flags_i2d(val, out, it, ASN1_TFLG_NDEF);
}
