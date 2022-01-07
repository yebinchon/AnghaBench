
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_stat {int probe_maximum; int tombstones; int n_entries; } ;
struct ck_hs_map {int probe_maximum; int tombstones; int n_entries; } ;
struct ck_hs {struct ck_hs_map* map; } ;



void
ck_hs_stat(struct ck_hs *hs, struct ck_hs_stat *st)
{
 struct ck_hs_map *map = hs->map;

 st->n_entries = map->n_entries;
 st->tombstones = map->tombstones;
 st->probe_maximum = map->probe_maximum;
 return;
}
