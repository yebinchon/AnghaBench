
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int heldPeriod; int startPeriod; int maxStart; int authPeriod; int timer_tick_enabled; void* initialize; void* force_authorized_update; int * eap_proxy; struct eapol_ctx* ctx; void* use_eap_proxy; int * eap; int portControl; } ;
struct eapol_ctx {int msg_ctx; int cert_in_cb; int wps; int openssl_ciphers; int pkcs11_module_path; int pkcs11_engine_path; int opensc_engine_path; } ;
struct eap_config {int cert_in_cb; int wps; int openssl_ciphers; int pkcs11_module_path; int pkcs11_engine_path; int opensc_engine_path; } ;
typedef int conf ;


 int Auto ;
 void* FALSE ;
 int MSG_ERROR ;
 void* TRUE ;
 int * eap_peer_sm_init (struct eapol_sm*,int *,int ,struct eap_config*) ;
 int * eap_proxy_init (struct eapol_sm*,int *,int ) ;
 int eapol_cb ;
 int eapol_port_timers_tick ;
 int eapol_sm_step (struct eapol_sm*) ;
 scalar_t__ eloop_register_timeout (int,int ,int ,int *,struct eapol_sm*) ;
 int os_free (struct eapol_sm*) ;
 int os_memset (struct eap_config*,int ,int) ;
 struct eapol_sm* os_zalloc (int) ;
 int wpa_printf (int ,char*) ;

struct eapol_sm *eapol_sm_init(struct eapol_ctx *ctx)
{
 struct eapol_sm *sm;
 struct eap_config conf;
 sm = os_zalloc(sizeof(*sm));
 if (sm == ((void*)0))
  return ((void*)0);
 sm->ctx = ctx;

 sm->portControl = Auto;


 sm->heldPeriod = 60;
 sm->startPeriod = 30;
 sm->maxStart = 3;


 sm->authPeriod = 30;

 os_memset(&conf, 0, sizeof(conf));
 conf.opensc_engine_path = ctx->opensc_engine_path;
 conf.pkcs11_engine_path = ctx->pkcs11_engine_path;
 conf.pkcs11_module_path = ctx->pkcs11_module_path;
 conf.openssl_ciphers = ctx->openssl_ciphers;
 conf.wps = ctx->wps;
 conf.cert_in_cb = ctx->cert_in_cb;

 sm->eap = eap_peer_sm_init(sm, &eapol_cb, sm->ctx->msg_ctx, &conf);
 if (sm->eap == ((void*)0)) {
  os_free(sm);
  return ((void*)0);
 }
 sm->force_authorized_update = TRUE;
 sm->initialize = TRUE;
 eapol_sm_step(sm);
 sm->initialize = FALSE;
 eapol_sm_step(sm);

 if (eloop_register_timeout(1, 0, eapol_port_timers_tick, ((void*)0), sm) == 0)
  sm->timer_tick_enabled = 1;

 return sm;
}
