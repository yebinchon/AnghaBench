
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct respip_set {int ip_tree; int region; } ;


 int addr_tree_init (int *) ;
 struct respip_set* calloc (int,int) ;
 int free (struct respip_set*) ;
 int regional_create () ;

struct respip_set*
respip_set_create(void)
{
 struct respip_set* set = calloc(1, sizeof(*set));
 if(!set)
  return ((void*)0);
 set->region = regional_create();
 if(!set->region) {
  free(set);
  return ((void*)0);
 }
 addr_tree_init(&set->ip_tree);
 return set;
}
