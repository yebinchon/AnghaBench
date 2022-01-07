
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsn_pmksa_cache_entry {struct rsn_pmksa_cache_entry* next; } ;
struct rsn_pmksa_cache {int ** pmkid; struct rsn_pmksa_cache_entry* pmksa; scalar_t__ pmksa_count; } ;


 int PMKID_HASH_SIZE ;
 int _pmksa_cache_free_entry (struct rsn_pmksa_cache_entry*) ;
 int eloop_cancel_timeout (int ,struct rsn_pmksa_cache*,int *) ;
 int os_free (struct rsn_pmksa_cache*) ;
 int pmksa_cache_expire ;

void pmksa_cache_auth_deinit(struct rsn_pmksa_cache *pmksa)
{
 struct rsn_pmksa_cache_entry *entry, *prev;
 int i;

 if (pmksa == ((void*)0))
  return;

 entry = pmksa->pmksa;
 while (entry) {
  prev = entry;
  entry = entry->next;
  _pmksa_cache_free_entry(prev);
 }
 eloop_cancel_timeout(pmksa_cache_expire, pmksa, ((void*)0));
 pmksa->pmksa_count = 0;
 pmksa->pmksa = ((void*)0);
 for (i = 0; i < PMKID_HASH_SIZE; i++)
  pmksa->pmkid[i] = ((void*)0);
 os_free(pmksa);
}
