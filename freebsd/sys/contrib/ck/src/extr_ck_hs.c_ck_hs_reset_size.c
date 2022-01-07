
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_map {int dummy; } ;
struct ck_hs {int m; struct ck_hs_map* map; } ;


 struct ck_hs_map* ck_hs_map_create (struct ck_hs*,unsigned long) ;
 int ck_hs_map_destroy (int ,struct ck_hs_map*,int) ;
 int ck_pr_store_ptr (struct ck_hs_map**,struct ck_hs_map*) ;

bool
ck_hs_reset_size(struct ck_hs *hs, unsigned long capacity)
{
 struct ck_hs_map *map, *previous;

 previous = hs->map;
 map = ck_hs_map_create(hs, capacity);
 if (map == ((void*)0))
  return 0;

 ck_pr_store_ptr(&hs->map, map);
 ck_hs_map_destroy(hs->m, previous, 1);
 return 1;
}
