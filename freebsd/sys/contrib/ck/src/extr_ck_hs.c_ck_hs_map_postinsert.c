
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_map {int n_entries; int capacity; } ;
struct ck_hs {int dummy; } ;


 int ck_hs_grow (struct ck_hs*,int) ;

__attribute__((used)) static void
ck_hs_map_postinsert(struct ck_hs *hs, struct ck_hs_map *map)
{

 map->n_entries++;
 if ((map->n_entries << 1) > map->capacity)
  ck_hs_grow(hs, map->capacity << 1);

 return;
}
