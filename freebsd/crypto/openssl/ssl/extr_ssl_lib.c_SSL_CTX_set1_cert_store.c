
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE ;
typedef int SSL_CTX ;


 int SSL_CTX_set_cert_store (int *,int *) ;
 int X509_STORE_up_ref (int *) ;

void SSL_CTX_set1_cert_store(SSL_CTX *ctx, X509_STORE *store)
{
    if (store != ((void*)0))
        X509_STORE_up_ref(store);
    SSL_CTX_set_cert_store(ctx, store);
}
