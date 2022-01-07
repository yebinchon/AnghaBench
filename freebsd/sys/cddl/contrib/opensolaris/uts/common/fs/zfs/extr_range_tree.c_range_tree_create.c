
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int range_tree_t ;
typedef int range_tree_ops_t ;


 int * range_tree_create_impl (int *,void*,int *,int ) ;

range_tree_t *
range_tree_create(range_tree_ops_t *ops, void *arg)
{
 return (range_tree_create_impl(ops, arg, ((void*)0), 0));
}
