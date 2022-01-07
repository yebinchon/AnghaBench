
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dh_group {int id; } ;


 size_t NUM_DH_GROUPS ;
 struct dh_group const* dh_groups ;

const struct dh_group * dh_groups_get(int id)
{
 size_t i;

 for (i = 0; i < NUM_DH_GROUPS; i++) {
  if (dh_groups[i].id == id)
   return &dh_groups[i];
 }
 return ((void*)0);
}
