
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsn_pmksa_cache_entry {struct rsn_pmksa_cache_entry* next; struct rsn_pmksa_cache_entry* hnext; int pmkid; } ;
struct rsn_pmksa_cache {struct rsn_pmksa_cache_entry* pmksa; struct rsn_pmksa_cache_entry** pmkid; int ctx; int (* free_cb ) (struct rsn_pmksa_cache_entry*,int ) ;int pmksa_count; } ;


 unsigned int PMKID_HASH (int ) ;
 int _pmksa_cache_free_entry (struct rsn_pmksa_cache_entry*) ;
 int stub1 (struct rsn_pmksa_cache_entry*,int ) ;

void pmksa_cache_free_entry(struct rsn_pmksa_cache *pmksa,
       struct rsn_pmksa_cache_entry *entry)
{
 struct rsn_pmksa_cache_entry *pos, *prev;
 unsigned int hash;

 pmksa->pmksa_count--;
 pmksa->free_cb(entry, pmksa->ctx);


 hash = PMKID_HASH(entry->pmkid);
 pos = pmksa->pmkid[hash];
 prev = ((void*)0);
 while (pos) {
  if (pos == entry) {
   if (prev != ((void*)0))
    prev->hnext = entry->hnext;
   else
    pmksa->pmkid[hash] = entry->hnext;
   break;
  }
  prev = pos;
  pos = pos->hnext;
 }


 pos = pmksa->pmksa;
 prev = ((void*)0);
 while (pos) {
  if (pos == entry) {
   if (prev != ((void*)0))
    prev->next = entry->next;
   else
    pmksa->pmksa = entry->next;
   break;
  }
  prev = pos;
  pos = pos->next;
 }

 _pmksa_cache_free_entry(entry);
}
