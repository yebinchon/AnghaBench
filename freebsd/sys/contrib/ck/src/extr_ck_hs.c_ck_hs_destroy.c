
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs {int map; int m; } ;


 int ck_hs_map_destroy (int ,int ,int) ;

void
ck_hs_destroy(struct ck_hs *hs)
{

 ck_hs_map_destroy(hs->m, hs->map, 0);
 return;
}
