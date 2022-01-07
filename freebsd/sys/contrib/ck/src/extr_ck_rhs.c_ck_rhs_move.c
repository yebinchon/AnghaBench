
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs {int * compare; int * hf; struct ck_malloc* m; int load_factor; int map; int seed; int mode; } ;
struct ck_malloc {int * free; int * malloc; } ;
typedef int ck_rhs_hash_cb_t ;
typedef int ck_rhs_compare_cb_t ;



bool
ck_rhs_move(struct ck_rhs *hs,
    struct ck_rhs *source,
    ck_rhs_hash_cb_t *hf,
    ck_rhs_compare_cb_t *compare,
    struct ck_malloc *m)
{

 if (m == ((void*)0) || m->malloc == ((void*)0) || m->free == ((void*)0) || hf == ((void*)0))
  return 0;

 hs->mode = source->mode;
 hs->seed = source->seed;
 hs->map = source->map;
 hs->load_factor = source->load_factor;
 hs->m = m;
 hs->hf = hf;
 hs->compare = compare;
 return 1;
}
