
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int range_tree_t ;


 int rt_avl_create (int *,void*) ;

void
rt_avl_vacate(range_tree_t *rt, void *arg)
{






 rt_avl_create(rt, arg);
}
