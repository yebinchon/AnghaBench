
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_map {unsigned long mask; int probe_maximum; int * probe_bound; } ;


 unsigned int CK_HS_LOAD (int *) ;
 unsigned int CK_HS_WORD_MAX ;
 unsigned int ck_pr_load_uint (int *) ;

__attribute__((used)) static inline unsigned int
ck_hs_map_bound_get(struct ck_hs_map *m, unsigned long h)
{
 unsigned long offset = h & m->mask;
 unsigned int r = CK_HS_WORD_MAX;

 if (m->probe_bound != ((void*)0)) {
  r = CK_HS_LOAD(&m->probe_bound[offset]);
  if (r == CK_HS_WORD_MAX)
   r = ck_pr_load_uint(&m->probe_maximum);
 } else {
  r = ck_pr_load_uint(&m->probe_maximum);
 }

 return r;
}
