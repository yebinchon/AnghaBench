
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;


 int MSG_DEBUG ;
 int SSL_free (int *) ;
 char* SSL_get_cipher_list (int *,int) ;
 int * SSL_new (int *) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void openssl_debug_dump_cipher_list(SSL_CTX *ssl_ctx)
{
 SSL *ssl;
 int i;

 ssl = SSL_new(ssl_ctx);
 if (!ssl)
  return;

 wpa_printf(MSG_DEBUG,
     "OpenSSL: Enabled cipher suites in priority order");
 for (i = 0; ; i++) {
  const char *cipher;

  cipher = SSL_get_cipher_list(ssl, i);
  if (!cipher)
   break;
  wpa_printf(MSG_DEBUG, "Cipher %d: %s", i, cipher);
 }

 SSL_free(ssl);
}
