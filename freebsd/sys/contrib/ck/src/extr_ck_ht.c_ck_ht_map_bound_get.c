
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_ht_map {size_t mask; int probe_maximum; int * probe_bound; } ;
struct ck_ht_hash {size_t value; } ;
typedef size_t CK_HT_TYPE ;


 size_t CK_HT_LOAD (int *) ;
 size_t CK_HT_TYPE_LOAD (int *) ;
 size_t CK_HT_WORD_MAX ;

__attribute__((used)) static inline CK_HT_TYPE
ck_ht_map_bound_get(struct ck_ht_map *m, struct ck_ht_hash h)
{
 CK_HT_TYPE offset = h.value & m->mask;
 CK_HT_TYPE r = CK_HT_WORD_MAX;

 if (m->probe_bound != ((void*)0)) {
  r = CK_HT_LOAD(&m->probe_bound[offset]);
  if (r == CK_HT_WORD_MAX)
   r = CK_HT_TYPE_LOAD(&m->probe_maximum);
 } else {
  r = CK_HT_TYPE_LOAD(&m->probe_maximum);
 }

 return r;
}
