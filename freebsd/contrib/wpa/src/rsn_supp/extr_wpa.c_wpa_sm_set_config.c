
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int fils_cache_id_set; scalar_t__ wpa_rsc_relaxation; scalar_t__ p2p; scalar_t__ wpa_ptk_rekey; scalar_t__ ssid_len; int * eap_conf_ctx; scalar_t__ eap_workaround; scalar_t__ proactive_key_caching; scalar_t__ allowed_pairwise_cipher; int * network_ctx; int fils_cache_id; int ssid; } ;
struct rsn_supp_config {scalar_t__ fils_cache_id; scalar_t__ wpa_rsc_relaxation; scalar_t__ p2p; scalar_t__ wpa_ptk_rekey; scalar_t__ ssid_len; scalar_t__ ssid; int * eap_conf_ctx; scalar_t__ eap_workaround; scalar_t__ proactive_key_caching; scalar_t__ allowed_pairwise_cipher; int * network_ctx; } ;


 scalar_t__ FILS_CACHE_ID_LEN ;
 int os_memcpy (int ,scalar_t__,scalar_t__) ;

void wpa_sm_set_config(struct wpa_sm *sm, struct rsn_supp_config *config)
{
 if (!sm)
  return;

 if (config) {
  sm->network_ctx = config->network_ctx;
  sm->allowed_pairwise_cipher = config->allowed_pairwise_cipher;
  sm->proactive_key_caching = config->proactive_key_caching;
  sm->eap_workaround = config->eap_workaround;
  sm->eap_conf_ctx = config->eap_conf_ctx;
  if (config->ssid) {
   os_memcpy(sm->ssid, config->ssid, config->ssid_len);
   sm->ssid_len = config->ssid_len;
  } else
   sm->ssid_len = 0;
  sm->wpa_ptk_rekey = config->wpa_ptk_rekey;
  sm->p2p = config->p2p;
  sm->wpa_rsc_relaxation = config->wpa_rsc_relaxation;
 } else {
  sm->network_ctx = ((void*)0);
  sm->allowed_pairwise_cipher = 0;
  sm->proactive_key_caching = 0;
  sm->eap_workaround = 0;
  sm->eap_conf_ctx = ((void*)0);
  sm->ssid_len = 0;
  sm->wpa_ptk_rekey = 0;
  sm->p2p = 0;
  sm->wpa_rsc_relaxation = 0;
 }
}
