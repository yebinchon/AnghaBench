
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eapol_sm {int startWhen; TYPE_1__* ctx; int SUPP_PAE_state; int cached_pmk; } ;
struct TYPE_2__ {int ctx; int (* aborted_cached ) (int ) ;} ;


 int FALSE ;
 int MSG_DEBUG ;
 int SUPP_PAE_CONNECTING ;
 int eapol_enable_timer_tick (struct eapol_sm*) ;
 int eapol_sm_set_port_unauthorized (struct eapol_sm*) ;
 int stub1 (int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eapol_sm_abort_cached(struct eapol_sm *sm)
{
 wpa_printf(MSG_DEBUG, "RSN: Authenticator did not accept PMKID, "
     "doing full EAP authentication");
 if (sm == ((void*)0))
  return;
 sm->cached_pmk = FALSE;
 sm->SUPP_PAE_state = SUPP_PAE_CONNECTING;
 eapol_sm_set_port_unauthorized(sm);



 sm->startWhen = 3;
 eapol_enable_timer_tick(sm);

 if (sm->ctx->aborted_cached)
  sm->ctx->aborted_cached(sm->ctx->ctx);
}
