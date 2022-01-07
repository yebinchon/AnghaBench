
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;
typedef int ASN1_ENUMERATED ;


 int V_ASN1_ENUMERATED ;
 int * asn1_string_to_bn (int const*,int *,int ) ;

BIGNUM *ASN1_ENUMERATED_to_BN(const ASN1_ENUMERATED *ai, BIGNUM *bn)
{
    return asn1_string_to_bn(ai, bn, V_ASN1_ENUMERATED);
}
