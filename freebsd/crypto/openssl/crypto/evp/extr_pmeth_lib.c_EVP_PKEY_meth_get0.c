
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_METHOD ;


 size_t OSSL_NELEM (int const**) ;
 int * app_pkey_methods ;
 scalar_t__ sk_EVP_PKEY_METHOD_num (int *) ;
 int const* sk_EVP_PKEY_METHOD_value (int *,size_t) ;
 int const** standard_methods ;

const EVP_PKEY_METHOD *EVP_PKEY_meth_get0(size_t idx)
{
    if (idx < OSSL_NELEM(standard_methods))
        return standard_methods[idx];
    if (app_pkey_methods == ((void*)0))
        return ((void*)0);
    idx -= OSSL_NELEM(standard_methods);
    if (idx >= (size_t)sk_EVP_PKEY_METHOD_num(app_pkey_methods))
        return ((void*)0);
    return sk_EVP_PKEY_METHOD_value(app_pkey_methods, idx);
}
