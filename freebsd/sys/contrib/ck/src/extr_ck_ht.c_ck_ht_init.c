
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ck_malloc {int * free; int * malloc; } ;
struct ck_ht {unsigned int mode; int * map; int * h; int seed; struct ck_malloc* m; } ;
typedef int ck_ht_hash_cb_t ;
typedef int CK_HT_TYPE ;


 int * ck_ht_hash_wrapper ;
 int * ck_ht_map_create (struct ck_ht*,int ) ;

bool
ck_ht_init(struct ck_ht *table,
    unsigned int mode,
    ck_ht_hash_cb_t *h,
    struct ck_malloc *m,
    CK_HT_TYPE entries,
    uint64_t seed)
{

 if (m == ((void*)0) || m->malloc == ((void*)0) || m->free == ((void*)0))
  return 0;

 table->m = m;
 table->mode = mode;
 table->seed = seed;

 if (h == ((void*)0)) {
  table->h = ck_ht_hash_wrapper;
 } else {
  table->h = h;
 }

 table->map = ck_ht_map_create(table, entries);
 return table->map != ((void*)0);
}
