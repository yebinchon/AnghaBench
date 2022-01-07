
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rsn_pmksa_cache_entry {int spa; struct rsn_pmksa_cache_entry* next; int pmkid; struct rsn_pmksa_cache_entry* hnext; } ;
struct rsn_pmksa_cache {struct rsn_pmksa_cache_entry* pmksa; struct rsn_pmksa_cache_entry** pmkid; } ;


 int ETH_ALEN ;
 size_t PMKID_HASH (int const*) ;
 int PMKID_LEN ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;

struct rsn_pmksa_cache_entry *
pmksa_cache_auth_get(struct rsn_pmksa_cache *pmksa,
       const u8 *spa, const u8 *pmkid)
{
 struct rsn_pmksa_cache_entry *entry;

 if (pmkid) {
  for (entry = pmksa->pmkid[PMKID_HASH(pmkid)]; entry;
       entry = entry->hnext) {
   if ((spa == ((void*)0) ||
        os_memcmp(entry->spa, spa, ETH_ALEN) == 0) &&
       os_memcmp(entry->pmkid, pmkid, PMKID_LEN) == 0)
    return entry;
  }
 } else {
  for (entry = pmksa->pmksa; entry; entry = entry->next) {
   if (spa == ((void*)0) ||
       os_memcmp(entry->spa, spa, ETH_ALEN) == 0)
    return entry;
  }
 }

 return ((void*)0);
}
