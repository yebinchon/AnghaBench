
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_ht {int map; int m; } ;


 int ck_ht_map_destroy (int ,int ,int) ;

void
ck_ht_destroy(struct ck_ht *table)
{

 ck_ht_map_destroy(table->m, table->map, 0);
 return;
}
