
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_ht_map {int capacity; } ;
struct ck_ht {struct ck_ht_map* map; } ;


 int ck_ht_reset_size_spmc (struct ck_ht*,int ) ;

bool
ck_ht_reset_spmc(struct ck_ht *table)
{
 struct ck_ht_map *map = table->map;

 return ck_ht_reset_size_spmc(table, map->capacity);
}
