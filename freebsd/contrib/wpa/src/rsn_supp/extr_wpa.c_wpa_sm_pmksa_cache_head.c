
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int pmksa; } ;
struct rsn_pmksa_cache_entry {int dummy; } ;


 struct rsn_pmksa_cache_entry* pmksa_cache_head (int ) ;

struct rsn_pmksa_cache_entry * wpa_sm_pmksa_cache_head(struct wpa_sm *sm)
{
 return pmksa_cache_head(sm->pmksa);
}
