
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {struct rsn_pmksa_cache_entry* pmksa; } ;
struct rsn_pmksa_cache_entry {int dummy; } ;



struct rsn_pmksa_cache_entry *
wpa_auth_sta_get_pmksa(struct wpa_state_machine *sm)
{
 return sm ? sm->pmksa : ((void*)0);
}
