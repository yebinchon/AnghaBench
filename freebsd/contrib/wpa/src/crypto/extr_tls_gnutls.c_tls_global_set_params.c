
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_global {int server; int params_set; int xcred; int * ocsp_stapling_response; } ;
struct tls_connection_params {int flags; scalar_t__ ocsp_stapling_response; int private_key_passwd; int private_key; int client_cert; int ca_cert; scalar_t__ check_cert_subject; } ;


 int GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD5 ;
 int GNUTLS_VERIFY_DISABLE_TIME_CHECKS ;
 int GNUTLS_X509_FMT_DER ;
 int GNUTLS_X509_FMT_PEM ;
 int MSG_DEBUG ;
 int TLS_CONN_ALLOW_SIGN_RSA_MD5 ;
 int TLS_CONN_DISABLE_TIME_CHECKS ;
 int gnutls_certificate_allocate_credentials (int *) ;
 int gnutls_certificate_free_credentials (int ) ;
 int gnutls_certificate_set_ocsp_status_request_function (int ,int ,struct tls_global*) ;
 int gnutls_certificate_set_verify_flags (int ,int ) ;
 int gnutls_certificate_set_x509_key_file (int ,int ,int ,int ) ;
 int gnutls_certificate_set_x509_simple_pkcs12_file (int ,int ,int ,int ) ;
 int gnutls_certificate_set_x509_trust_file (int ,int ,int ) ;
 int gnutls_strerror (int) ;
 int os_free (int *) ;
 int * os_strdup (scalar_t__) ;
 int server_ocsp_status_req ;
 int wpa_printf (int ,char*,...) ;

int tls_global_set_params(void *tls_ctx,
     const struct tls_connection_params *params)
{
 struct tls_global *global = tls_ctx;
 int ret;

 if (params->check_cert_subject)
  return -1;



 global->server = 1;

 if (global->params_set) {
  gnutls_certificate_free_credentials(global->xcred);
  global->params_set = 0;
 }

 ret = gnutls_certificate_allocate_credentials(&global->xcred);
 if (ret) {
  wpa_printf(MSG_DEBUG, "Failed to allocate global credentials "
      "%s", gnutls_strerror(ret));
  return -1;
 }

 if (params->ca_cert) {
  ret = gnutls_certificate_set_x509_trust_file(
   global->xcred, params->ca_cert, GNUTLS_X509_FMT_DER);
  if (ret < 0) {
   wpa_printf(MSG_DEBUG, "Failed to read CA cert '%s' "
       "in DER format: %s", params->ca_cert,
       gnutls_strerror(ret));
   ret = gnutls_certificate_set_x509_trust_file(
    global->xcred, params->ca_cert,
    GNUTLS_X509_FMT_PEM);
   if (ret < 0) {
    wpa_printf(MSG_DEBUG, "Failed to read CA cert "
        "'%s' in PEM format: %s",
        params->ca_cert,
        gnutls_strerror(ret));
    goto fail;
   }
  }

  if (params->flags & TLS_CONN_ALLOW_SIGN_RSA_MD5) {
   gnutls_certificate_set_verify_flags(
    global->xcred,
    GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD5);
  }

  if (params->flags & TLS_CONN_DISABLE_TIME_CHECKS) {
   gnutls_certificate_set_verify_flags(
    global->xcred,
    GNUTLS_VERIFY_DISABLE_TIME_CHECKS);
  }
 }

 if (params->client_cert && params->private_key) {

  ret = gnutls_certificate_set_x509_key_file(
   global->xcred, params->client_cert,
   params->private_key, GNUTLS_X509_FMT_DER);
  if (ret < 0) {
   wpa_printf(MSG_DEBUG, "Failed to read client cert/key "
       "in DER format: %s", gnutls_strerror(ret));
   ret = gnutls_certificate_set_x509_key_file(
    global->xcred, params->client_cert,
    params->private_key, GNUTLS_X509_FMT_PEM);
   if (ret < 0) {
    wpa_printf(MSG_DEBUG, "Failed to read client "
        "cert/key in PEM format: %s",
        gnutls_strerror(ret));
    goto fail;
   }
  }
 } else if (params->private_key) {
  int pkcs12_ok = 0;
  if (!pkcs12_ok) {
   wpa_printf(MSG_DEBUG, "GnuTLS: PKCS#12 support not "
       "included");
   goto fail;
  }
 }
 global->params_set = 1;

 return 0;

fail:
 gnutls_certificate_free_credentials(global->xcred);
 return -1;
}
