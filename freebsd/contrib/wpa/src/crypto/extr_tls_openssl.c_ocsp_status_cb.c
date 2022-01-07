
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ocsp_stapling_response; } ;
typedef int SSL ;


 int MSG_DEBUG ;
 char* OPENSSL_malloc (size_t) ;
 int SSL_TLSEXT_ERR_ALERT_FATAL ;
 int SSL_TLSEXT_ERR_OK ;
 int SSL_set_tlsext_status_ocsp_resp (int *,char*,size_t) ;
 int os_free (char*) ;
 int os_memcpy (char*,char*,size_t) ;
 char* os_readfile (int *,size_t*) ;
 TYPE_1__* tls_global ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int ocsp_status_cb(SSL *s, void *arg)
{
 char *tmp;
 char *resp;
 size_t len;

 if (tls_global->ocsp_stapling_response == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "OpenSSL: OCSP status callback - no response configured");
  return SSL_TLSEXT_ERR_OK;
 }

 resp = os_readfile(tls_global->ocsp_stapling_response, &len);
 if (resp == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "OpenSSL: OCSP status callback - could not read response file");


  return SSL_TLSEXT_ERR_OK;
 }
 wpa_printf(MSG_DEBUG, "OpenSSL: OCSP status callback - send cached response");
 tmp = OPENSSL_malloc(len);
 if (tmp == ((void*)0)) {
  os_free(resp);
  return SSL_TLSEXT_ERR_ALERT_FATAL;
 }

 os_memcpy(tmp, resp, len);
 os_free(resp);
 SSL_set_tlsext_status_ocsp_resp(s, tmp, len);

 return SSL_TLSEXT_ERR_OK;
}
