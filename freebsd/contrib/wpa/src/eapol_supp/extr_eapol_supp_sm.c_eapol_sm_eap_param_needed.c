
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eapol_sm {TYPE_1__* ctx; } ;
typedef enum wpa_ctrl_req_type { ____Placeholder_wpa_ctrl_req_type } wpa_ctrl_req_type ;
struct TYPE_2__ {int ctx; int (* eap_param_needed ) (int ,int,char const*) ;} ;


 int MSG_DEBUG ;
 int stub1 (int ,int,char const*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eapol_sm_eap_param_needed(void *ctx, enum wpa_ctrl_req_type field,
          const char *txt)
{
 struct eapol_sm *sm = ctx;
 wpa_printf(MSG_DEBUG, "EAPOL: EAP parameter needed");
 if (sm->ctx->eap_param_needed)
  sm->ctx->eap_param_needed(sm->ctx->ctx, field, txt);
}
