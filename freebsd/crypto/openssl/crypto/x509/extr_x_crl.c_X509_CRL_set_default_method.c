
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_CRL_METHOD ;


 int const* default_crl_method ;
 int int_crl_meth ;

void X509_CRL_set_default_method(const X509_CRL_METHOD *meth)
{
    if (meth == ((void*)0))
        default_crl_method = &int_crl_meth;
    else
        default_crl_method = meth;
}
