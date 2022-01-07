
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {scalar_t__ capacity; } ;
struct ck_rhs_iterator {scalar_t__ offset; } ;
struct ck_rhs {int mode; struct ck_rhs_map* map; } ;


 void* CK_CC_DECONST_PTR (int ) ;
 void* CK_RHS_EMPTY ;
 int CK_RHS_MODE_OBJECT ;
 void* CK_RHS_VMA (void*) ;
 int ck_rhs_entry (struct ck_rhs_map*,scalar_t__) ;

bool
ck_rhs_next(struct ck_rhs *hs, struct ck_rhs_iterator *i, void **key)
{
 struct ck_rhs_map *map = hs->map;
 void *value;

 if (i->offset >= map->capacity)
  return 0;

 do {
  value = CK_CC_DECONST_PTR(ck_rhs_entry(map, i->offset));
  if (value != CK_RHS_EMPTY) {




   i->offset++;
   *key = value;
   return 1;
  }
 } while (++i->offset < map->capacity);

 return 0;
}
