
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE_CTX ;


 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_zalloc (int) ;
 int X509_F_X509_STORE_CTX_NEW ;
 int X509err (int ,int ) ;

X509_STORE_CTX *X509_STORE_CTX_new(void)
{
    X509_STORE_CTX *ctx = OPENSSL_zalloc(sizeof(*ctx));

    if (ctx == ((void*)0)) {
        X509err(X509_F_X509_STORE_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    return ctx;
}
