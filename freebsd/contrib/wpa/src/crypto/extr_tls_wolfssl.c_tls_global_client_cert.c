
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WOLFSSL_CTX ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int SSL_FILETYPE_ASN1 ;
 scalar_t__ SSL_SUCCESS ;
 scalar_t__ wolfSSL_CTX_use_certificate_chain_file (int *,char const*) ;
 scalar_t__ wolfSSL_CTX_use_certificate_chain_file_format (int *,char const*,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int tls_global_client_cert(void *ssl_ctx, const char *client_cert)
{
 WOLFSSL_CTX *ctx = ssl_ctx;

 if (!client_cert)
  return 0;

 if (wolfSSL_CTX_use_certificate_chain_file_format(ctx, client_cert,
         SSL_FILETYPE_ASN1) !=
     SSL_SUCCESS &&
     wolfSSL_CTX_use_certificate_chain_file(ctx, client_cert) !=
     SSL_SUCCESS) {
  wpa_printf(MSG_INFO, "Failed to load client certificate");
  return -1;
 }

 wpa_printf(MSG_DEBUG, "SSL: Loaded global client certificate: %s",
     client_cert);

 return 0;
}
