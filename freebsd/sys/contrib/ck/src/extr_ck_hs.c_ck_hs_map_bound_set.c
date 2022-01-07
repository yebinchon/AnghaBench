
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_map {unsigned long mask; unsigned long probe_maximum; unsigned long* probe_bound; } ;


 int CK_HS_STORE (unsigned long*,unsigned long) ;
 unsigned long CK_HS_WORD_MAX ;
 int ck_pr_fence_store () ;
 int ck_pr_store_uint (unsigned long*,unsigned long) ;

__attribute__((used)) static inline void
ck_hs_map_bound_set(struct ck_hs_map *m,
    unsigned long h,
    unsigned long n_probes)
{
 unsigned long offset = h & m->mask;

 if (n_probes > m->probe_maximum)
  ck_pr_store_uint(&m->probe_maximum, n_probes);

 if (m->probe_bound != ((void*)0) && m->probe_bound[offset] < n_probes) {
  if (n_probes > CK_HS_WORD_MAX)
   n_probes = CK_HS_WORD_MAX;

  CK_HS_STORE(&m->probe_bound[offset], n_probes);
  ck_pr_fence_store();
 }

 return;
}
