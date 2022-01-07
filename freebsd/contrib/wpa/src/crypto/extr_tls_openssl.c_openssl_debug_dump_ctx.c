
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int openssl_debug_dump_certificate_chains (int *) ;
 int openssl_debug_dump_cipher_list (int *) ;

__attribute__((used)) static void openssl_debug_dump_ctx(SSL_CTX *ssl_ctx)
{
 openssl_debug_dump_cipher_list(ssl_ctx);
 openssl_debug_dump_certificate_chains(ssl_ctx);
}
