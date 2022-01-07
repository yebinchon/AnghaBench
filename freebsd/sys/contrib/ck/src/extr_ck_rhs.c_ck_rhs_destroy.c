
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs {int map; int m; } ;


 int ck_rhs_map_destroy (int ,int ,int) ;

void
ck_rhs_destroy(struct ck_rhs *hs)
{

 ck_rhs_map_destroy(hs->m, hs->map, 0);
 return;
}
