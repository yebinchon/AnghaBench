
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {unsigned long max_entries; unsigned long capacity; unsigned long n_entries; } ;
struct ck_rhs {unsigned int load_factor; struct ck_rhs_map* map; } ;


 int ck_rhs_grow (struct ck_rhs*,int) ;

bool
ck_rhs_set_load_factor(struct ck_rhs *hs, unsigned int load_factor)
{
 struct ck_rhs_map *map = hs->map;

 if (load_factor == 0 || load_factor > 100)
  return 0;

 hs->load_factor = load_factor;
 map->max_entries = (map->capacity * (unsigned long)hs->load_factor) / 100;
 while (map->n_entries > map->max_entries) {
  if (ck_rhs_grow(hs, map->capacity << 1) == 0)
   return 0;
  map = hs->map;
 }
 return 1;
}
