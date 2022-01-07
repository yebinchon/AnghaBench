
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rsn_pmksa_cache_entry {int dummy; } ;
struct rsn_pmksa_cache {int dummy; } ;



__attribute__((used)) static inline struct rsn_pmksa_cache_entry *
pmksa_cache_add(struct rsn_pmksa_cache *pmksa, const u8 *pmk, size_t pmk_len,
  const u8 *pmkid, const u8 *kck, size_t kck_len,
  const u8 *aa, const u8 *spa, void *network_ctx, int akmp,
  const u8 *cache_id)
{
 return ((void*)0);
}
