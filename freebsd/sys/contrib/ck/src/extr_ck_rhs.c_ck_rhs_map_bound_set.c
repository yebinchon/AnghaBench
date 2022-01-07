
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ck_rhs_entry_desc* descs; } ;
struct ck_rhs_map {unsigned long mask; unsigned long probe_maximum; TYPE_1__ entries; int read_mostly; } ;
struct ck_rhs_entry_desc {unsigned long probe_bound; } ;


 int CK_RHS_STORE (unsigned long*,unsigned long) ;
 unsigned long CK_RHS_WORD_MAX ;
 int ck_pr_fence_store () ;
 int ck_pr_store_uint (unsigned long*,unsigned long) ;

__attribute__((used)) static inline void
ck_rhs_map_bound_set(struct ck_rhs_map *m,
    unsigned long h,
    unsigned long n_probes)
{
 unsigned long offset = h & m->mask;
 struct ck_rhs_entry_desc *desc;

 if (n_probes > m->probe_maximum)
  ck_pr_store_uint(&m->probe_maximum, n_probes);
 if (!(m->read_mostly)) {
  desc = &m->entries.descs[offset];

  if (desc->probe_bound < n_probes) {
   if (n_probes > CK_RHS_WORD_MAX)
    n_probes = CK_RHS_WORD_MAX;

   CK_RHS_STORE(&desc->probe_bound, n_probes);
   ck_pr_fence_store();
  }
 }

 return;
}
