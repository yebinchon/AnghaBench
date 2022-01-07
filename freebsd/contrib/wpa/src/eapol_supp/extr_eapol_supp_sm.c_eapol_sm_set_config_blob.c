
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_config_blob {int dummy; } ;
struct eapol_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int ctx; int (* set_config_blob ) (int ,struct wpa_config_blob*) ;} ;


 int stub1 (int ,struct wpa_config_blob*) ;

__attribute__((used)) static void eapol_sm_set_config_blob(void *ctx, struct wpa_config_blob *blob)
{

 struct eapol_sm *sm = ctx;
 if (sm && sm->ctx && sm->ctx->set_config_blob)
  sm->ctx->set_config_blob(sm->ctx->ctx, blob);

}
