
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int SSL_CERT_SET_FIRST ;
 int SSL_CERT_SET_NEXT ;
 int SSL_CTX_set_current_cert (int *,int ) ;
 int openssl_debug_dump_certificates (int *) ;

__attribute__((used)) static void openssl_debug_dump_certificate_chains(SSL_CTX *ssl_ctx)
{

 int res;

 for (res = SSL_CTX_set_current_cert(ssl_ctx, SSL_CERT_SET_FIRST);
      res == 1;
      res = SSL_CTX_set_current_cert(ssl_ctx, SSL_CERT_SET_NEXT))
  openssl_debug_dump_certificates(ssl_ctx);

 SSL_CTX_set_current_cert(ssl_ctx, SSL_CERT_SET_FIRST);

}
