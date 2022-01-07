
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection_params {int flags; int openssl_ciphers; int dh_blob_len; int dh_blob; int dh_file; int private_key_blob_len; int private_key_blob; int private_key; int client_cert_blob_len; int client_cert_blob; int client_cert; int ca_cert_blob_len; int ca_cert_blob; int ca_cert; } ;
struct eap_ssl_data {scalar_t__ eap_type; } ;
struct eap_sm {int ext_cert_check; scalar_t__ workaround; } ;
struct eap_peer_config {int openssl_ciphers; scalar_t__ teap_anon_dh; } ;


 scalar_t__ EAP_TYPE_FAST ;
 scalar_t__ EAP_TYPE_PEAP ;
 scalar_t__ EAP_TYPE_TEAP ;
 scalar_t__ EAP_TYPE_TLS ;
 scalar_t__ EAP_TYPE_TTLS ;
 scalar_t__ EAP_UNAUTH_TLS_TYPE ;
 scalar_t__ EAP_WFA_UNAUTH_TLS_TYPE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int TLS_CONN_DISABLE_SESSION_TICKET ;
 int TLS_CONN_DISABLE_TLSv1_0 ;
 int TLS_CONN_DISABLE_TLSv1_1 ;
 int TLS_CONN_DISABLE_TLSv1_3 ;
 int TLS_CONN_EAP_FAST ;
 int TLS_CONN_EXT_CERT_CHECK ;
 int TLS_CONN_TEAP_ANON_DH ;
 scalar_t__ eap_tls_check_blob (struct eap_sm*,int *,int *,int *) ;
 int eap_tls_params_from_conf1 (struct tls_connection_params*,struct eap_peer_config*) ;
 int eap_tls_params_from_conf2 (struct tls_connection_params*,struct eap_peer_config*) ;
 int os_memset (struct tls_connection_params*,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_tls_params_from_conf(struct eap_sm *sm,
        struct eap_ssl_data *data,
        struct tls_connection_params *params,
        struct eap_peer_config *config, int phase2)
{
 os_memset(params, 0, sizeof(*params));
 if (sm->workaround && data->eap_type != EAP_TYPE_FAST &&
     data->eap_type != EAP_TYPE_TEAP) {
  params->flags |= TLS_CONN_DISABLE_SESSION_TICKET;
 }
 if (data->eap_type == EAP_TYPE_TEAP) {

  params->flags |= TLS_CONN_DISABLE_TLSv1_0 |
   TLS_CONN_DISABLE_TLSv1_1;
  if (config->teap_anon_dh)
   params->flags |= TLS_CONN_TEAP_ANON_DH;
 }
 if (data->eap_type == EAP_TYPE_FAST ||
     data->eap_type == EAP_TYPE_TEAP ||
     data->eap_type == EAP_TYPE_TTLS ||
     data->eap_type == EAP_TYPE_PEAP) {


  params->flags |= TLS_CONN_DISABLE_TLSv1_3;
 }
 if (data->eap_type == EAP_TYPE_TLS ||
     data->eap_type == EAP_UNAUTH_TLS_TYPE ||
     data->eap_type == EAP_WFA_UNAUTH_TLS_TYPE) {







  params->flags |= TLS_CONN_DISABLE_TLSv1_3;
 }
 if (phase2) {
  wpa_printf(MSG_DEBUG, "TLS: using phase2 config options");
  eap_tls_params_from_conf2(params, config);
 } else {
  wpa_printf(MSG_DEBUG, "TLS: using phase1 config options");
  eap_tls_params_from_conf1(params, config);
  if (data->eap_type == EAP_TYPE_FAST)
   params->flags |= TLS_CONN_EAP_FAST;
 }





 if (eap_tls_check_blob(sm, &params->ca_cert, &params->ca_cert_blob,
          &params->ca_cert_blob_len) ||
     eap_tls_check_blob(sm, &params->client_cert,
          &params->client_cert_blob,
          &params->client_cert_blob_len) ||
     eap_tls_check_blob(sm, &params->private_key,
          &params->private_key_blob,
          &params->private_key_blob_len) ||
     eap_tls_check_blob(sm, &params->dh_file, &params->dh_blob,
          &params->dh_blob_len)) {
  wpa_printf(MSG_INFO, "SSL: Failed to get configuration blobs");
  return -1;
 }

 params->openssl_ciphers = config->openssl_ciphers;

 sm->ext_cert_check = !!(params->flags & TLS_CONN_EXT_CERT_CHECK);

 return 0;
}
