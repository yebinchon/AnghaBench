
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rsn_pmksa_cache_entry {int dummy; } ;
struct rsn_pmksa_cache {int dummy; } ;
struct eapol_state_machine {int dummy; } ;


 scalar_t__ pmksa_cache_auth_add_entry (struct rsn_pmksa_cache*,struct rsn_pmksa_cache_entry*) ;
 struct rsn_pmksa_cache_entry* pmksa_cache_auth_create_entry (int const*,size_t,int const*,int const*,size_t,int const*,int const*,int,struct eapol_state_machine*,int) ;

struct rsn_pmksa_cache_entry *
pmksa_cache_auth_add(struct rsn_pmksa_cache *pmksa,
       const u8 *pmk, size_t pmk_len, const u8 *pmkid,
       const u8 *kck, size_t kck_len,
       const u8 *aa, const u8 *spa, int session_timeout,
       struct eapol_state_machine *eapol, int akmp)
{
 struct rsn_pmksa_cache_entry *entry;

 entry = pmksa_cache_auth_create_entry(pmk, pmk_len, pmkid, kck, kck_len,
           aa, spa, session_timeout, eapol,
           akmp);

 if (pmksa_cache_auth_add_entry(pmksa, entry) < 0)
  return ((void*)0);

 return entry;
}
