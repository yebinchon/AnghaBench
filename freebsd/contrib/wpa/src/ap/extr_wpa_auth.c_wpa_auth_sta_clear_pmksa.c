
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {struct rsn_pmksa_cache_entry* pmksa; } ;
struct rsn_pmksa_cache_entry {int dummy; } ;



int wpa_auth_sta_clear_pmksa(struct wpa_state_machine *sm,
        struct rsn_pmksa_cache_entry *entry)
{
 if (sm == ((void*)0) || sm->pmksa != entry)
  return -1;
 sm->pmksa = ((void*)0);
 return 0;
}
