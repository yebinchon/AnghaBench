
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
typedef int ASN1_ENUMERATED ;


 int i2a_ASN1_INTEGER (int *,int const*) ;

int i2a_ASN1_ENUMERATED(BIO *bp, const ASN1_ENUMERATED *a)
{
    return i2a_ASN1_INTEGER(bp, a);
}
