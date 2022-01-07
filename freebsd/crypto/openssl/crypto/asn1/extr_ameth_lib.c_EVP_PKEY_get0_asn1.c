
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* ameth; } ;
typedef int EVP_PKEY_ASN1_METHOD ;
typedef TYPE_1__ EVP_PKEY ;



const EVP_PKEY_ASN1_METHOD *EVP_PKEY_get0_asn1(const EVP_PKEY *pkey)
{
    return pkey->ameth;
}
