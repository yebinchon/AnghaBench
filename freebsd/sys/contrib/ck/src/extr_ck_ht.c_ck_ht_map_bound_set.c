
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_ht_map {size_t mask; size_t probe_maximum; size_t* probe_bound; } ;
struct ck_ht_hash {size_t value; } ;
typedef size_t CK_HT_TYPE ;


 int CK_HT_STORE (size_t*,size_t) ;
 int CK_HT_TYPE_STORE (size_t*,size_t) ;
 size_t CK_HT_WORD_MAX ;
 int ck_pr_fence_store () ;

__attribute__((used)) static inline void
ck_ht_map_bound_set(struct ck_ht_map *m,
    struct ck_ht_hash h,
    CK_HT_TYPE n_probes)
{
 CK_HT_TYPE offset = h.value & m->mask;

 if (n_probes > m->probe_maximum)
  CK_HT_TYPE_STORE(&m->probe_maximum, n_probes);

 if (m->probe_bound != ((void*)0) && m->probe_bound[offset] < n_probes) {
  if (n_probes >= CK_HT_WORD_MAX)
   n_probes = CK_HT_WORD_MAX;

  CK_HT_STORE(&m->probe_bound[offset], n_probes);
  ck_pr_fence_store();
 }

 return;
}
