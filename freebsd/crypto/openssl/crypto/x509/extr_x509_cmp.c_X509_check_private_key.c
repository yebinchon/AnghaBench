
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int EVP_PKEY ;


 int EVP_PKEY_cmp (int const*,int const*) ;
 int X509_F_X509_CHECK_PRIVATE_KEY ;
 int X509_R_KEY_TYPE_MISMATCH ;
 int X509_R_KEY_VALUES_MISMATCH ;
 int X509_R_UNKNOWN_KEY_TYPE ;
 int * X509_get0_pubkey (int const*) ;
 int X509err (int ,int ) ;

int X509_check_private_key(const X509 *x, const EVP_PKEY *k)
{
    const EVP_PKEY *xk;
    int ret;

    xk = X509_get0_pubkey(x);

    if (xk)
        ret = EVP_PKEY_cmp(xk, k);
    else
        ret = -2;

    switch (ret) {
    case 1:
        break;
    case 0:
        X509err(X509_F_X509_CHECK_PRIVATE_KEY, X509_R_KEY_VALUES_MISMATCH);
        break;
    case -1:
        X509err(X509_F_X509_CHECK_PRIVATE_KEY, X509_R_KEY_TYPE_MISMATCH);
        break;
    case -2:
        X509err(X509_F_X509_CHECK_PRIVATE_KEY, X509_R_UNKNOWN_KEY_TYPE);
    }
    if (ret > 0)
        return 1;
    return 0;
}
