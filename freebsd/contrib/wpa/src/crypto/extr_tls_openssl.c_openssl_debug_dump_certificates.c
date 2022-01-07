
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int MSG_DEBUG ;
 int SSL_CTX_get0_certificate (int *) ;
 int SSL_CTX_get0_chain_certs (int *,int*) ;
 int STACK_OF (int ) ;
 int X509 ;
 int certs ;
 int openssl_debug_dump_certificate (int,int ) ;
 int sk_X509_num (int) ;
 int sk_X509_value (int,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void openssl_debug_dump_certificates(SSL_CTX *ssl_ctx)
{
 STACK_OF(X509) *certs;

 wpa_printf(MSG_DEBUG, "OpenSSL: Configured certificate chain");
 if (SSL_CTX_get0_chain_certs(ssl_ctx, &certs) == 1) {
  int i;

  for (i = sk_X509_num(certs); i > 0; i--)
   openssl_debug_dump_certificate(i, sk_X509_value(certs,
         i - 1));
 }
 openssl_debug_dump_certificate(0, SSL_CTX_get0_certificate(ssl_ctx));
}
