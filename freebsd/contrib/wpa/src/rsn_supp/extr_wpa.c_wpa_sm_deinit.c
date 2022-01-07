
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int dpp_z; int owe_ecdh; int fils_ft_ies; int fils_ecdh; int test_assoc_ie; struct wpa_sm* assoc_resp_ies; struct wpa_sm* ctx; struct wpa_sm* ap_rsn_ie; struct wpa_sm* ap_wpa_ie; struct wpa_sm* assoc_wpa_ie; int pmksa; } ;


 int crypto_ecdh_deinit (int ) ;
 int eloop_cancel_timeout (int ,struct wpa_sm*,int *) ;
 int os_free (struct wpa_sm*) ;
 int pmksa_cache_deinit (int ) ;
 int wpa_sm_drop_sa (struct wpa_sm*) ;
 int wpa_sm_rekey_ptk ;
 int wpa_sm_start_preauth ;
 int wpabuf_clear_free (int ) ;
 int wpabuf_free (int ) ;

void wpa_sm_deinit(struct wpa_sm *sm)
{
 if (sm == ((void*)0))
  return;
 pmksa_cache_deinit(sm->pmksa);
 eloop_cancel_timeout(wpa_sm_start_preauth, sm, ((void*)0));
 eloop_cancel_timeout(wpa_sm_rekey_ptk, sm, ((void*)0));
 os_free(sm->assoc_wpa_ie);
 os_free(sm->ap_wpa_ie);
 os_free(sm->ap_rsn_ie);
 wpa_sm_drop_sa(sm);
 os_free(sm->ctx);
 os_free(sm);
}
