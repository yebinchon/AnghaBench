
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_config_blob {int dummy; } ;
struct eapol_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int ctx; struct wpa_config_blob const* (* get_config_blob ) (int ,char const*) ;} ;


 struct wpa_config_blob const* stub1 (int ,char const*) ;

__attribute__((used)) static const struct wpa_config_blob *
eapol_sm_get_config_blob(void *ctx, const char *name)
{

 struct eapol_sm *sm = ctx;
 if (sm && sm->ctx && sm->ctx->get_config_blob)
  return sm->ctx->get_config_blob(sm->ctx->ctx, name);
 else
  return ((void*)0);



}
