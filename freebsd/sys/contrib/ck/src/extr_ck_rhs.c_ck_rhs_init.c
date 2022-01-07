
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs {unsigned int mode; unsigned long seed; int * map; int load_factor; int * compare; int * hf; struct ck_malloc* m; } ;
struct ck_malloc {int * free; int * malloc; } ;
typedef int ck_rhs_hash_cb_t ;
typedef int ck_rhs_compare_cb_t ;


 int CK_RHS_DEFAULT_LOAD_FACTOR ;
 int * ck_rhs_map_create (struct ck_rhs*,unsigned long) ;

bool
ck_rhs_init(struct ck_rhs *hs,
    unsigned int mode,
    ck_rhs_hash_cb_t *hf,
    ck_rhs_compare_cb_t *compare,
    struct ck_malloc *m,
    unsigned long n_entries,
    unsigned long seed)
{

 if (m == ((void*)0) || m->malloc == ((void*)0) || m->free == ((void*)0) || hf == ((void*)0))
  return 0;

 hs->m = m;
 hs->mode = mode;
 hs->seed = seed;
 hs->hf = hf;
 hs->compare = compare;
 hs->load_factor = CK_RHS_DEFAULT_LOAD_FACTOR;

 hs->map = ck_rhs_map_create(hs, n_entries);
 return hs->map != ((void*)0);
}
