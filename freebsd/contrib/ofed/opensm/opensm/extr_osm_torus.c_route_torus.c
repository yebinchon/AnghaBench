
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int * sw_pool; scalar_t__ switch_cnt; } ;


 scalar_t__ torus_lft (struct torus*,int ) ;
 scalar_t__ torus_master_stree (struct torus*) ;

int route_torus(struct torus *t)
{
 int s;
 bool success = 1;

 for (s = 0; s < (int)t->switch_cnt; s++)
  success = torus_lft(t, t->sw_pool[s]) && success;

 success = success && torus_master_stree(t);

 return success ? 0 : -1;
}
