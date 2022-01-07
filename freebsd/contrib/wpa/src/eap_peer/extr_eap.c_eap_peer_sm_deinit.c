
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {scalar_t__ ssl_ctx; scalar_t__ ssl_ctx2; } ;


 int eap_deinit_prev_method (struct eap_sm*,char*) ;
 int eap_peer_erp_free_keys (struct eap_sm*) ;
 int eap_sm_abort (struct eap_sm*) ;
 int os_free (struct eap_sm*) ;
 int tls_deinit (scalar_t__) ;

void eap_peer_sm_deinit(struct eap_sm *sm)
{
 if (sm == ((void*)0))
  return;
 eap_deinit_prev_method(sm, "EAP deinit");
 eap_sm_abort(sm);
 if (sm->ssl_ctx2)
  tls_deinit(sm->ssl_ctx2);
 tls_deinit(sm->ssl_ctx);
 eap_peer_erp_free_keys(sm);
 os_free(sm);
}
