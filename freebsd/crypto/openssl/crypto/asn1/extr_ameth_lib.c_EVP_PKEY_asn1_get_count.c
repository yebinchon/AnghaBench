
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSSL_NELEM (int ) ;
 scalar_t__ app_methods ;
 scalar_t__ sk_EVP_PKEY_ASN1_METHOD_num (scalar_t__) ;
 int standard_methods ;

int EVP_PKEY_asn1_get_count(void)
{
    int num = OSSL_NELEM(standard_methods);
    if (app_methods)
        num += sk_EVP_PKEY_ASN1_METHOD_num(app_methods);
    return num;
}
