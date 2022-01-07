
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
struct TYPE_4__ {struct eap_server_erp_key* (* erp_get_key ) (int ,char const*) ;} ;
struct TYPE_6__ {TYPE_2__ conf; TYPE_1__ cb; } ;


 struct eap_server_erp_key* stub1 (int ,char const*) ;

__attribute__((used)) static struct eap_server_erp_key * eapol_sm_erp_get_key(void *ctx,
       const char *keyname)
{
 struct eapol_state_machine *sm = ctx;
 return sm->eapol->cb.erp_get_key(sm->eapol->conf.ctx, keyname);
}
