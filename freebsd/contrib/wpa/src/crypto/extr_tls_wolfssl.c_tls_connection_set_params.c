
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection_params {int flags; scalar_t__ openssl_ciphers; int dh_blob_len; int dh_blob; int dh_file; int private_key_blob_len; int private_key_blob; int private_key_passwd; int private_key; int client_cert_blob_len; int client_cert_blob; int client_cert; int ca_path; int ca_cert_blob_len; int ca_cert_blob; int ca_cert; int domain_match; int suffix_match; int altsubject_match; int subject_match; } ;
struct tls_connection {int flags; int ssl; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ SSL_SUCCESS ;
 int TLS_CONN_REQUEST_OCSP ;
 int TLS_CONN_REQUIRE_OCSP ;
 int WOLFSSL_CSR2_OCSP_MULTI ;
 int WOLFSSL_CSR_OCSP ;
 int WOLFSSL_CSR_OCSP_USE_NONCE ;
 void* ctx ;
 scalar_t__ tls_connection_ca_cert (void*,struct tls_connection*,int ,int ,int ,int ) ;
 scalar_t__ tls_connection_client_cert (struct tls_connection*,int ,int ,int ) ;
 scalar_t__ tls_connection_dh (struct tls_connection*,int ,int ,int ) ;
 scalar_t__ tls_connection_private_key (void*,struct tls_connection*,int ,int ,int ,int ) ;
 scalar_t__ tls_connection_set_subject_match (struct tls_connection*,int ,int ,int ,int ) ;
 int tls_set_conn_flags (int ,int) ;
 int wolfSSL_CTX_EnableOCSP (void*,int ) ;
 scalar_t__ wolfSSL_UseOCSPStapling (int ,int ,int ) ;
 scalar_t__ wolfSSL_UseOCSPStaplingV2 (int ,int ,int ) ;
 int wolfSSL_set_cipher_list (int ,scalar_t__) ;
 int wpa_printf (int ,char*,...) ;

int tls_connection_set_params(void *tls_ctx, struct tls_connection *conn,
         const struct tls_connection_params *params)
{
 wpa_printf(MSG_DEBUG, "SSL: set params");

 if (tls_connection_set_subject_match(conn, params->subject_match,
          params->altsubject_match,
          params->suffix_match,
          params->domain_match) < 0) {
  wpa_printf(MSG_INFO, "Error setting subject match");
  return -1;
 }

 if (tls_connection_ca_cert(tls_ctx, conn, params->ca_cert,
       params->ca_cert_blob,
       params->ca_cert_blob_len,
       params->ca_path) < 0) {
  wpa_printf(MSG_INFO, "Error setting CA cert");
  return -1;
 }

 if (tls_connection_client_cert(conn, params->client_cert,
           params->client_cert_blob,
           params->client_cert_blob_len) < 0) {
  wpa_printf(MSG_INFO, "Error setting client cert");
  return -1;
 }

 if (tls_connection_private_key(tls_ctx, conn, params->private_key,
           params->private_key_passwd,
           params->private_key_blob,
           params->private_key_blob_len) < 0) {
  wpa_printf(MSG_INFO, "Error setting private key");
  return -1;
 }

 if (tls_connection_dh(conn, params->dh_file, params->dh_blob,
         params->dh_blob_len) < 0) {
  wpa_printf(MSG_INFO, "Error setting DH");
  return -1;
 }

 if (params->openssl_ciphers &&
     wolfSSL_set_cipher_list(conn->ssl, params->openssl_ciphers) != 1) {
  wpa_printf(MSG_INFO,
      "wolfSSL: Failed to set cipher string '%s'",
      params->openssl_ciphers);
  return -1;
 }

 tls_set_conn_flags(conn->ssl, params->flags);
 if (params->flags & TLS_CONN_REQUIRE_OCSP) {
  wpa_printf(MSG_INFO,
      "wolfSSL: No OCSP support included - reject configuration");
  return -1;
 }
 if (params->flags & TLS_CONN_REQUEST_OCSP) {
  wpa_printf(MSG_DEBUG,
      "wolfSSL: No OCSP support included - allow optional OCSP case to continue");
 }




 conn->flags = params->flags;

 return 0;
}
