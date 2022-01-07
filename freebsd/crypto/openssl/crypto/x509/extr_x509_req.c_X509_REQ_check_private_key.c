
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_REQ ;
typedef int EVP_PKEY ;


 int ERR_R_EC_LIB ;
 int EVP_PKEY_DH ;
 int EVP_PKEY_EC ;
 int EVP_PKEY_cmp (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int EVP_PKEY_id (int *) ;
 int X509_F_X509_REQ_CHECK_PRIVATE_KEY ;
 int * X509_REQ_get_pubkey (int *) ;
 int X509_R_CANT_CHECK_DH_KEY ;
 int X509_R_KEY_TYPE_MISMATCH ;
 int X509_R_KEY_VALUES_MISMATCH ;
 int X509_R_UNKNOWN_KEY_TYPE ;
 int X509err (int ,int ) ;

int X509_REQ_check_private_key(X509_REQ *x, EVP_PKEY *k)
{
    EVP_PKEY *xk = ((void*)0);
    int ok = 0;

    xk = X509_REQ_get_pubkey(x);
    switch (EVP_PKEY_cmp(xk, k)) {
    case 1:
        ok = 1;
        break;
    case 0:
        X509err(X509_F_X509_REQ_CHECK_PRIVATE_KEY,
                X509_R_KEY_VALUES_MISMATCH);
        break;
    case -1:
        X509err(X509_F_X509_REQ_CHECK_PRIVATE_KEY, X509_R_KEY_TYPE_MISMATCH);
        break;
    case -2:

        if (EVP_PKEY_id(k) == EVP_PKEY_EC) {
            X509err(X509_F_X509_REQ_CHECK_PRIVATE_KEY, ERR_R_EC_LIB);
            break;
        }


        if (EVP_PKEY_id(k) == EVP_PKEY_DH) {

            X509err(X509_F_X509_REQ_CHECK_PRIVATE_KEY,
                    X509_R_CANT_CHECK_DH_KEY);
            break;
        }

        X509err(X509_F_X509_REQ_CHECK_PRIVATE_KEY, X509_R_UNKNOWN_KEY_TYPE);
    }

    EVP_PKEY_free(xk);
    return ok;
}
