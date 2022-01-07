
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbtree_type {int dummy; } ;
struct respip_set {struct rbtree_type ip_tree; } ;



struct rbtree_type*
respip_set_get_tree(struct respip_set* set)
{
 if(!set)
  return ((void*)0);
 return &set->ip_tree;
}
