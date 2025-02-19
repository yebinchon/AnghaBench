
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_map {scalar_t__ capacity; int * entries; } ;
struct ck_hs_iterator {scalar_t__ offset; } ;
struct ck_hs {int mode; } ;


 void* CK_CC_DECONST_PTR (int ) ;
 void* CK_HS_EMPTY ;
 int CK_HS_MODE_OBJECT ;
 void* CK_HS_TOMBSTONE ;
 void* CK_HS_VMA (void*) ;

__attribute__((used)) static bool
_ck_hs_next(struct ck_hs *hs, struct ck_hs_map *map, struct ck_hs_iterator *i, void **key)
{
 void *value;
 if (i->offset >= map->capacity)
  return 0;

 do {
  value = CK_CC_DECONST_PTR(map->entries[i->offset]);
  if (value != CK_HS_EMPTY && value != CK_HS_TOMBSTONE) {




   (void)hs;

   i->offset++;
   *key = value;
   return 1;
  }
 } while (++i->offset < map->capacity);

 return 0;
}
