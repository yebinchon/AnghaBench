
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WOLFSSL_CTX ;


 int MSG_DEBUG ;
 int MSG_WARNING ;
 int wolfSSL_CTX_load_verify_locations (int *,char const*,int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tls_global_ca_cert(void *ssl_ctx, const char *ca_cert)
{
 WOLFSSL_CTX *ctx = ssl_ctx;

 if (ca_cert) {
  if (wolfSSL_CTX_load_verify_locations(ctx, ca_cert, ((void*)0)) != 1)
  {
   wpa_printf(MSG_WARNING,
       "Failed to load root certificates");
   return -1;
  }

  wpa_printf(MSG_DEBUG,
      "TLS: Trusted root certificate(s) loaded");
 }

 return 0;
}
