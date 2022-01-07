
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int EVP_PKEY ;


 int EVP_PKEY_security_bits (int *) ;
 int * X509_get0_pubkey (int *) ;
 int ssl_ctx_security (int *,int,int,int ,int *) ;
 int ssl_security (int *,int,int,int ,int *) ;

__attribute__((used)) static int ssl_security_cert_key(SSL *s, SSL_CTX *ctx, X509 *x, int op)
{
    int secbits = -1;
    EVP_PKEY *pkey = X509_get0_pubkey(x);
    if (pkey) {






        secbits = EVP_PKEY_security_bits(pkey);
    }
    if (s)
        return ssl_security(s, op, secbits, 0, x);
    else
        return ssl_ctx_security(ctx, op, secbits, 0, x);
}
