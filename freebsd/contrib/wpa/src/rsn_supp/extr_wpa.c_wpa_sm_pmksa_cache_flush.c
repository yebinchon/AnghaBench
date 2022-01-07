
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int pmksa; } ;


 int pmksa_cache_flush (int ,void*,int *,int ) ;

void wpa_sm_pmksa_cache_flush(struct wpa_sm *sm, void *network_ctx)
{
 pmksa_cache_flush(sm->pmksa, network_ctx, ((void*)0), 0);
}
