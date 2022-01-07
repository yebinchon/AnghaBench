
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_ht_stat {int probe_maximum; int n_entries; } ;
struct ck_ht_map {int probe_maximum; int n_entries; } ;
struct ck_ht {struct ck_ht_map* map; } ;



void
ck_ht_stat(struct ck_ht *table,
    struct ck_ht_stat *st)
{
 struct ck_ht_map *map = table->map;

 st->n_entries = map->n_entries;
 st->probe_maximum = map->probe_maximum;
 return;
}
