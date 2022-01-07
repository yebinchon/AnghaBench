
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tlsconf ;
struct tls_config {int fips_mode; int cert_in_cb; struct eap_sm* cb_ctx; int event_cb; int openssl_ciphers; int pkcs11_module_path; int pkcs11_engine_path; int opensc_engine_path; } ;
struct eapol_callbacks {int dummy; } ;
struct eap_sm {int * ssl_ctx2; int * ssl_ctx; int erp_keys; int wps; int ClientTimeout; void* msg_ctx; struct eapol_callbacks const* eapol_cb; void* eapol_ctx; } ;
struct eap_config {int cert_in_cb; int openssl_ciphers; int pkcs11_module_path; int pkcs11_engine_path; int opensc_engine_path; int wps; } ;


 int EAP_CLIENT_TIMEOUT_DEFAULT ;
 int MSG_INFO ;
 int MSG_WARNING ;
 int dl_list_init (int *) ;
 int eap_peer_sm_tls_event ;
 int os_free (struct eap_sm*) ;
 int os_memset (struct tls_config*,int ,int) ;
 struct eap_sm* os_zalloc (int) ;
 void* tls_init (struct tls_config*) ;
 int wpa_printf (int ,char*) ;

struct eap_sm * eap_peer_sm_init(void *eapol_ctx,
     const struct eapol_callbacks *eapol_cb,
     void *msg_ctx, struct eap_config *conf)
{
 struct eap_sm *sm;
 struct tls_config tlsconf;

 sm = os_zalloc(sizeof(*sm));
 if (sm == ((void*)0))
  return ((void*)0);
 sm->eapol_ctx = eapol_ctx;
 sm->eapol_cb = eapol_cb;
 sm->msg_ctx = msg_ctx;
 sm->ClientTimeout = EAP_CLIENT_TIMEOUT_DEFAULT;
 sm->wps = conf->wps;
 dl_list_init(&sm->erp_keys);

 os_memset(&tlsconf, 0, sizeof(tlsconf));
 tlsconf.opensc_engine_path = conf->opensc_engine_path;
 tlsconf.pkcs11_engine_path = conf->pkcs11_engine_path;
 tlsconf.pkcs11_module_path = conf->pkcs11_module_path;
 tlsconf.openssl_ciphers = conf->openssl_ciphers;



 tlsconf.event_cb = eap_peer_sm_tls_event;
 tlsconf.cb_ctx = sm;
 tlsconf.cert_in_cb = conf->cert_in_cb;
 sm->ssl_ctx = tls_init(&tlsconf);
 if (sm->ssl_ctx == ((void*)0)) {
  wpa_printf(MSG_WARNING, "SSL: Failed to initialize TLS "
      "context.");
  os_free(sm);
  return ((void*)0);
 }

 sm->ssl_ctx2 = tls_init(&tlsconf);
 if (sm->ssl_ctx2 == ((void*)0)) {
  wpa_printf(MSG_INFO, "SSL: Failed to initialize TLS "
      "context (2).");

 }

 return sm;
}
