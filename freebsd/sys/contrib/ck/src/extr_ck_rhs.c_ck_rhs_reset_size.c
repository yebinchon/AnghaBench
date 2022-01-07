
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {int dummy; } ;
struct ck_rhs {int m; struct ck_rhs_map* map; } ;


 int ck_pr_store_ptr (struct ck_rhs_map**,struct ck_rhs_map*) ;
 struct ck_rhs_map* ck_rhs_map_create (struct ck_rhs*,unsigned long) ;
 int ck_rhs_map_destroy (int ,struct ck_rhs_map*,int) ;

bool
ck_rhs_reset_size(struct ck_rhs *hs, unsigned long capacity)
{
 struct ck_rhs_map *map, *previous;

 previous = hs->map;
 map = ck_rhs_map_create(hs, capacity);
 if (map == ((void*)0))
  return 0;

 ck_pr_store_ptr(&hs->map, map);
 ck_rhs_map_destroy(hs->m, previous, 1);
 return 1;
}
