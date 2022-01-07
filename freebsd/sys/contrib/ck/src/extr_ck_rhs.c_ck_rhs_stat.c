
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_stat {int probe_maximum; int n_entries; } ;
struct ck_rhs_map {int probe_maximum; int n_entries; } ;
struct ck_rhs {struct ck_rhs_map* map; } ;



void
ck_rhs_stat(struct ck_rhs *hs, struct ck_rhs_stat *st)
{
 struct ck_rhs_map *map = hs->map;

 st->n_entries = map->n_entries;
 st->probe_maximum = map->probe_maximum;
 return;
}
