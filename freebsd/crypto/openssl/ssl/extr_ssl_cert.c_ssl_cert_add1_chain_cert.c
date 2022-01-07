
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL_CTX ;
typedef int SSL ;


 int X509_up_ref (int *) ;
 int ssl_cert_add0_chain_cert (int *,int *,int *) ;

int ssl_cert_add1_chain_cert(SSL *s, SSL_CTX *ctx, X509 *x)
{
    if (!ssl_cert_add0_chain_cert(s, ctx, x))
        return 0;
    X509_up_ref(x);
    return 1;
}
