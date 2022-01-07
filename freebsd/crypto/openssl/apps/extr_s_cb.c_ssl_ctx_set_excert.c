
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_EXCERT ;
typedef int SSL_CTX ;


 int SSL_CTX_set_cert_cb (int *,int ,int *) ;
 int set_cert_cb ;

void ssl_ctx_set_excert(SSL_CTX *ctx, SSL_EXCERT *exc)
{
    SSL_CTX_set_cert_cb(ctx, set_cert_cb, exc);
}
