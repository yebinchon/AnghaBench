
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_malloc {int * free; int * malloc; } ;
struct ck_hs {int * compare; int * hf; struct ck_malloc* m; int map; int seed; int mode; } ;
typedef int ck_hs_hash_cb_t ;
typedef int ck_hs_compare_cb_t ;



bool
ck_hs_move(struct ck_hs *hs,
    struct ck_hs *source,
    ck_hs_hash_cb_t *hf,
    ck_hs_compare_cb_t *compare,
    struct ck_malloc *m)
{

 if (m == ((void*)0) || m->malloc == ((void*)0) || m->free == ((void*)0) || hf == ((void*)0))
  return 0;

 hs->mode = source->mode;
 hs->seed = source->seed;
 hs->map = source->map;
 hs->m = m;
 hs->hf = hf;
 hs->compare = compare;
 return 1;
}
