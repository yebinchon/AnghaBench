
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_sm {int pmksa; } ;


 int * pmksa_cache_get (int ,int const*,int *,void const*,int ) ;

int wpa_sm_pmksa_exists(struct wpa_sm *sm, const u8 *bssid,
   const void *network_ctx)
{
 return pmksa_cache_get(sm->pmksa, bssid, ((void*)0), network_ctx, 0) != ((void*)0);
}
