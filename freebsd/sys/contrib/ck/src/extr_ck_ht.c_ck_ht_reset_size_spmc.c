
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_ht_map {int dummy; } ;
struct ck_ht {int m; struct ck_ht_map* map; } ;
typedef int CK_HT_TYPE ;


 struct ck_ht_map* ck_ht_map_create (struct ck_ht*,int ) ;
 int ck_ht_map_destroy (int ,struct ck_ht_map*,int) ;
 int ck_pr_store_ptr_unsafe (struct ck_ht_map**,struct ck_ht_map*) ;

bool
ck_ht_reset_size_spmc(struct ck_ht *table, CK_HT_TYPE size)
{
 struct ck_ht_map *map, *update;

 map = table->map;
 update = ck_ht_map_create(table, size);
 if (update == ((void*)0))
  return 0;

 ck_pr_store_ptr_unsafe(&table->map, update);
 ck_ht_map_destroy(table->m, map, 1);
 return 1;
}
