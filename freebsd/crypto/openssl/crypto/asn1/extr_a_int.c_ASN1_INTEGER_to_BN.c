
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;
typedef int ASN1_INTEGER ;


 int V_ASN1_INTEGER ;
 int * asn1_string_to_bn (int const*,int *,int ) ;

BIGNUM *ASN1_INTEGER_to_BN(const ASN1_INTEGER *ai, BIGNUM *bn)
{
    return asn1_string_to_bn(ai, bn, V_ASN1_INTEGER);
}
