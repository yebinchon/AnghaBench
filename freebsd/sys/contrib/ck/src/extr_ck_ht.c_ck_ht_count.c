
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_ht_map {int n_entries; } ;
struct ck_ht {int map; } ;
typedef int CK_HT_TYPE ;


 int CK_HT_TYPE_LOAD (int *) ;
 struct ck_ht_map* ck_pr_load_ptr (int *) ;

CK_HT_TYPE
ck_ht_count(struct ck_ht *table)
{
 struct ck_ht_map *map = ck_pr_load_ptr(&table->map);

 return CK_HT_TYPE_LOAD(&map->n_entries);
}
