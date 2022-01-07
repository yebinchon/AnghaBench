
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eapol_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int ctx; int (* eap_error_cb ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static void eapol_sm_notify_eap_error(void *ctx, int error_code)
{
 struct eapol_sm *sm = ctx;

 if (sm->ctx->eap_error_cb)
  sm->ctx->eap_error_cb(sm->ctx->ctx, error_code);
}
