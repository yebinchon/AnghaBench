
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autr_global_data {int probe; } ;


 scalar_t__ malloc (int) ;
 int probetree_cmp ;
 int rbtree_init (int *,int *) ;

struct autr_global_data* autr_global_create(void)
{
 struct autr_global_data* global;
 global = (struct autr_global_data*)malloc(sizeof(*global));
 if(!global)
  return ((void*)0);
 rbtree_init(&global->probe, &probetree_cmp);
 return global;
}
