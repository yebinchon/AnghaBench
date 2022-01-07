
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_malloc {int * free; int * malloc; } ;
struct ck_hs {unsigned int mode; unsigned long seed; int * map; int * compare; int * hf; struct ck_malloc* m; } ;
typedef int ck_hs_hash_cb_t ;
typedef int ck_hs_compare_cb_t ;


 int * ck_hs_map_create (struct ck_hs*,unsigned long) ;

bool
ck_hs_init(struct ck_hs *hs,
    unsigned int mode,
    ck_hs_hash_cb_t *hf,
    ck_hs_compare_cb_t *compare,
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

 hs->map = ck_hs_map_create(hs, n_entries);
 return hs->map != ((void*)0);
}
