
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm_ctx {int msg_ctx; } ;
struct wpa_sm {int renew_snonce; int dot11RSNAConfigPMKLifetime; int dot11RSNAConfigPMKReauthThreshold; int dot11RSNAConfigSATimeout; struct wpa_sm_ctx* ctx; int * pmksa; int pmksa_candidates; } ;


 int MSG_ERROR ;
 int dl_list_init (int *) ;
 int os_free (struct wpa_sm*) ;
 struct wpa_sm* os_zalloc (int) ;
 int * pmksa_cache_init (int ,struct wpa_sm*,struct wpa_sm*) ;
 int wpa_msg (int ,int ,char*) ;
 int wpa_sm_pmksa_free_cb ;

struct wpa_sm * wpa_sm_init(struct wpa_sm_ctx *ctx)
{
 struct wpa_sm *sm;

 sm = os_zalloc(sizeof(*sm));
 if (sm == ((void*)0))
  return ((void*)0);
 dl_list_init(&sm->pmksa_candidates);
 sm->renew_snonce = 1;
 sm->ctx = ctx;

 sm->dot11RSNAConfigPMKLifetime = 43200;
 sm->dot11RSNAConfigPMKReauthThreshold = 70;
 sm->dot11RSNAConfigSATimeout = 60;

 sm->pmksa = pmksa_cache_init(wpa_sm_pmksa_free_cb, sm, sm);
 if (sm->pmksa == ((void*)0)) {
  wpa_msg(sm->ctx->msg_ctx, MSG_ERROR,
   "RSN: PMKSA cache initialization failed");
  os_free(sm);
  return ((void*)0);
 }

 return sm;
}
