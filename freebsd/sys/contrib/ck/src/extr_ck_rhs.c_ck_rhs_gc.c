
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {unsigned long capacity; unsigned int probe_maximum; } ;
struct ck_rhs {struct ck_rhs_map* map; } ;


 unsigned int ck_rhs_probes (struct ck_rhs_map*,unsigned long) ;

bool
ck_rhs_gc(struct ck_rhs *hs)
{
 unsigned long i;
 struct ck_rhs_map *map = hs->map;

 unsigned int max_probes = 0;
 for (i = 0; i < map->capacity; i++) {
  if (ck_rhs_probes(map, i) > max_probes)
   max_probes = ck_rhs_probes(map, i);
 }
 map->probe_maximum = max_probes;
 return 1;
}
