
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection_params {int flags; scalar_t__ ocsp_stapling_response; scalar_t__ openssl_ecdh_curves; scalar_t__ openssl_ciphers; int dh_file; int dh_blob_len; int dh_blob; int private_key; int private_key_passwd; int client_cert; int ca_cert; scalar_t__ check_cert_subject; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int TLS_CONN_DISABLE_SESSION_TICKET ;
 int ocsp_resp_free_cb ;
 int ocsp_status_cb ;
 scalar_t__ tls_global_ca_cert (void*,int ) ;
 scalar_t__ tls_global_client_cert (void*,int ) ;
 scalar_t__ tls_global_dh (void*,int ,int ,int ) ;
 scalar_t__ tls_global_private_key (void*,int ,int ) ;
 int wolfSSL_CTX_SetOCSP_Cb (void*,int ,int ,int *) ;
 int wolfSSL_CTX_SetOCSP_OverrideURL (void*,scalar_t__) ;
 int wolfSSL_CTX_UseSessionTicket (void*) ;
 int wolfSSL_CTX_set_cipher_list (void*,scalar_t__) ;
 int wpa_printf (int ,char*,...) ;

int tls_global_set_params(void *tls_ctx,
     const struct tls_connection_params *params)
{
 wpa_printf(MSG_DEBUG, "SSL: global set params");

 if (params->check_cert_subject)
  return -1;

 if (tls_global_ca_cert(tls_ctx, params->ca_cert) < 0) {
  wpa_printf(MSG_INFO, "SSL: Failed to load ca cert file '%s'",
      params->ca_cert);
  return -1;
 }

 if (tls_global_client_cert(tls_ctx, params->client_cert) < 0) {
  wpa_printf(MSG_INFO,
      "SSL: Failed to load client cert file '%s'",
      params->client_cert);
  return -1;
 }

 if (tls_global_private_key(tls_ctx, params->private_key,
       params->private_key_passwd) < 0) {
  wpa_printf(MSG_INFO,
      "SSL: Failed to load private key file '%s'",
      params->private_key);
  return -1;
 }

 if (tls_global_dh(tls_ctx, params->dh_file, params->dh_blob,
     params->dh_blob_len) < 0) {
  wpa_printf(MSG_INFO, "SSL: Failed to load DH file '%s'",
      params->dh_file);
  return -1;
 }

 if (params->openssl_ciphers &&
     wolfSSL_CTX_set_cipher_list(tls_ctx,
     params->openssl_ciphers) != 1) {
  wpa_printf(MSG_INFO,
      "wolfSSL: Failed to set cipher string '%s'",
      params->openssl_ciphers);
  return -1;
 }

 if (params->openssl_ecdh_curves) {
  wpa_printf(MSG_INFO,
      "wolfSSL: openssl_ecdh_curves not supported");
  return -1;
 }
 return 0;
}
