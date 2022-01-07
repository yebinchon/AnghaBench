
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rsn_pmksa_cache_entry {int akmp; int pmk_len; int pmk; int * spa; struct rsn_pmksa_cache_entry* next; } ;
struct rsn_pmksa_cache {struct rsn_pmksa_cache_entry* pmksa; } ;


 int ETH_ALEN ;
 int PMKID_LEN ;
 scalar_t__ os_memcmp (int *,int const*,int) ;
 int rsn_pmkid (int ,int ,int const*,int const*,int *,int ) ;

struct rsn_pmksa_cache_entry * pmksa_cache_get_okc(
 struct rsn_pmksa_cache *pmksa, const u8 *aa, const u8 *spa,
 const u8 *pmkid)
{
 struct rsn_pmksa_cache_entry *entry;
 u8 new_pmkid[PMKID_LEN];

 for (entry = pmksa->pmksa; entry; entry = entry->next) {
  if (os_memcmp(entry->spa, spa, ETH_ALEN) != 0)
   continue;
  rsn_pmkid(entry->pmk, entry->pmk_len, aa, spa, new_pmkid,
     entry->akmp);
  if (os_memcmp(new_pmkid, pmkid, PMKID_LEN) == 0)
   return entry;
 }
 return ((void*)0);
}
