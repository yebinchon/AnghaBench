
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct eapol_state_machine {TYPE_3__* eapol; } ;
struct eap_server_erp_key {int dummy; } ;
struct TYPE_5__ {int ctx; } ;
struct TYPE_4__ {int (* erp_add_key ) (int ,struct eap_server_erp_key*) ;} ;
struct TYPE_6__ {TYPE_2__ conf; TYPE_1__ cb; } ;


 int stub1 (int ,struct eap_server_erp_key*) ;

__attribute__((used)) static int eapol_sm_erp_add_key(void *ctx, struct eap_server_erp_key *erp)
{
 struct eapol_state_machine *sm = ctx;
 return sm->eapol->cb.erp_add_key(sm->eapol->conf.ctx, erp);
}
