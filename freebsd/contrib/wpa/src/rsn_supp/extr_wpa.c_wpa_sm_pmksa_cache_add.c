
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_sm {int key_mgmt; int network_ctx; int own_addr; int pmksa; int cur_pmksa; } ;


 int pmksa_cache_add (int ,int const*,size_t,int const*,int *,int ,int const*,int ,int ,int ,int const*) ;

void wpa_sm_pmksa_cache_add(struct wpa_sm *sm, const u8 *pmk, size_t pmk_len,
       const u8 *pmkid, const u8 *bssid,
       const u8 *fils_cache_id)
{
 sm->cur_pmksa = pmksa_cache_add(sm->pmksa, pmk, pmk_len, pmkid, ((void*)0), 0,
     bssid, sm->own_addr, sm->network_ctx,
     sm->key_mgmt, fils_cache_id);
}
